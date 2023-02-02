#pragma once

// This API only works in C++ (it is not available in Python)
namespace ImmApp
{
    enum class FontRenderer { FreeType, StbTrueType };

    FontRenderer CurrentFontRenderer();
    void SetFontRenderer(FontRenderer renderer);
    bool HasRenderer(FontRenderer renderer);

    // Shows a menu that enables to select between FreeType and StbTrueType
    // (shows nothing if freetype support is not enabled)
    void ShowFontRendererMenu();

    namespace Details
    {
        void Cb_FrontRendererPreNewFrame();
    }
}