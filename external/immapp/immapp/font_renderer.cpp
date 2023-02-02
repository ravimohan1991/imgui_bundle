#include "immapp/font_renderer.h"
#include "hello_imgui/hello_imgui.h"
#include "imgui_internal.h"
#ifdef IMGUI_ENABLE_FREETYPE
#include "imgui/misc/freetype/imgui_freetype.h"
#endif

#include <map>

// Forward decls from imgui_impl_opengl3.cpp
bool    ImGui_ImplOpenGL3_CreateDeviceObjects();
void    ImGui_ImplOpenGL3_DestroyDeviceObjects();

namespace ImmApp
{

    std::map<std::string, FontRenderer> sFontRendererNames{
        {"StbTrueType", FontRenderer::StbTrueType},
        {"FreeType", FontRenderer::FreeType}
    };


#ifdef IMGUI_ENABLE_FREETYPE
    FontRenderer defaultFontRenderer = FontRenderer::FreeType;
#else
    FontRenderer defaultFontRenderer = FontRenderer::StbTrueType;
#endif

    struct FontSettings
    {
        FontRenderer CurrentFontRenderer = defaultFontRenderer;
    };

    FontSettings staticFontSettings;
    bool staticFontSettingsChanged = false;

    FontRenderer CurrentFontRenderer()
    {
        return staticFontSettings.CurrentFontRenderer;
    }

    void SetFontRenderer(FontRenderer renderer)
    {
        if (renderer == FontRenderer::FreeType)
        {
#ifndef IMGUI_ENABLE_FREETYPE
            HIMG_ERROR("SetFontRenderer(FontRenderer::FreeType): ImGui Bundle was built without IMGUI_ENABLE_FREETYPE !");
#endif
        }
        if (renderer == FontRenderer::StbTrueType)
        {
#ifndef IMGUI_ENABLE_STB_TRUETYPE
            HIMG_ERROR("SetFontRenderer(FontRenderer::StbTrueType): ImGui Bundle was built without IMGUI_ENABLE_STB_TRUETYPE !");
#endif
        }

        staticFontSettingsChanged = (renderer != staticFontSettings.CurrentFontRenderer);
        staticFontSettings.CurrentFontRenderer = renderer;
    }

    bool HasRenderer(FontRenderer renderer)
    {
        if (renderer == FontRenderer::FreeType)
        {
#ifdef IMGUI_ENABLE_FREETYPE
            return true;
#else
            return false;
#endif
        }
        else
        {
#ifdef IMGUI_ENABLE_STB_TRUETYPE
            return true;
#else
            return false;
#endif
        }
    }


    // Shows a menu that enables to select between FreeType and StbTrueType
    // (shows nothing if freetype support is not enabled)
    void ShowFontRendererMenu()
    {
        if (!HasRenderer(FontRenderer::FreeType))
            return;

        if (ImGui::BeginMenu("Font Renderer"))
        {
            for (const auto& kv: sFontRendererNames)
            {
                if (HasRenderer(kv.second))
                {
                    bool selected = (kv.second == CurrentFontRenderer());
                    if (ImGui::MenuItem(kv.first.c_str(), nullptr, selected))
                        SetFontRenderer(kv.second);
                }
            }
            ImGui::EndMenu();
        }
    }


    namespace Details
    {
        void SetAtlasBuildMode()
        {
            ImFontAtlas* atlas = ImGui::GetIO().Fonts;

#ifdef IMGUI_ENABLE_FREETYPE
            if (staticFontSettings.CurrentFontRenderer == FontRenderer::FreeType)
            {
                atlas->FontBuilderIO = ImGuiFreeType::GetBuilderForFreeType();
                // atlas->FontBuilderFlags = FreeTypeBuilderFlags;
            }
#endif
#ifdef IMGUI_ENABLE_STB_TRUETYPE
            if (staticFontSettings.CurrentFontRenderer == FontRenderer::StbTrueType)
            {
                atlas->FontBuilderIO = ImFontAtlasGetBuilderForStbTruetype();
                // atlas->FontBuilderFlags = 0;
            }
#endif
            atlas->Build();
        }

        void Cb_FrontRendererPreNewFrame()
        {
            if (!staticFontSettingsChanged)
                return;

            SetAtlasBuildMode();
            ImGui_ImplOpenGL3_DestroyDeviceObjects();
            ImGui_ImplOpenGL3_CreateDeviceObjects();
            staticFontSettingsChanged = false;
        }
    }
}