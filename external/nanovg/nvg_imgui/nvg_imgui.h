#pragma once

#include "imgui.h"
#include <functional>
#include <memory>
#include "nanovg.h"

struct NVGcontext;

namespace NvgImgui
{
    using NvgDrawingFunction = std::function<void(float width, float height)>;

    // Duplicate of NVGcreateFlags in nanovg_gl.h
    enum NvgCreateFlags {
        // Flag indicating if geometry based anti-aliasing is used (may not be needed when using MSAA).
        NVG_ANTIALIAS 		= 1<<0,
        // Flag indicating if strokes should be drawn using stencil buffer. The rendering will be a little
        // slower, but path overlaps (i.e. self-intersecting or sharp turns) will be drawn just once.
        NVG_STENCIL_STROKES	= 1<<1,
        // Flag indicating that additional debug checks are done.
        NVG_DEBUG 			= 1<<2,
    };

    // Creates a NanoVG context, using the current rendering backend (OpenGL, Metal, ...)
    // Currently, the only supported backend is OpenGL (see NVGcreateFlags_GL)
    NVGcontext* CreateNvgContext(int flags = 0);

    // Deletes a NanoVG context
    void DeleteNvgContext(NVGcontext* vg);

    // NvgFramebuffer: a framebuffer that can be used by NanoVG + ImGui
    // Internally stored inside the renderer backend (e.g. OpenGL)
    // Note: this class can be instantiated only after a valid renderer backend (e.g. OpenGL) has been created
    class NvgFramebuffer
    {
    public:
        NVGcontext *vg = nullptr;
        int Width = 0, Height = 0;
        int NvgImageFlags = 0;
        ImTextureID TextureId = {};

        // Warning: this constructor can be called only after a valid renderer backend (e.g. OpenGL) has been created
        // (will call Init())
        NvgFramebuffer(
            NVGcontext *vg,
            int width, int height,
            int nvgImageFlags
            ); // See NVGimageFlags

        // Warning: this destructor should be called when a valid render backend (e.g. OpenGL) is still active
        // and when the NVGcontext vg is still valid
        ~NvgFramebuffer();

        // Make the framebuffer the current render target
        void Bind();

        // Restore the previous render target
        void Unbind();

    private:
        // PImpl that contains the actual implementation of the framebuffer, depending on the rendering backend
        struct PImpl;
        PImpl* pImpl = nullptr;
    };


    // Render the given drawing function to the background of the application
    // (i.e. the main viewport)
    // If clearColor.w > 0.f, the background will be cleared with this color
    void RenderNvgToBackground(
        NVGcontext* vg,
        NvgDrawingFunction nvgDrawingFunction,
        ImVec4 clearColor = ImVec4(0.f, 0.f, 0.f, 1.f)
        );

    // Render the given drawing function to the given framebuffer
    // If clearColor.w > 0.f, the background will be cleared with this color
    void RenderNvgToFrameBuffer(
        NVGcontext* vg,
        NvgFramebuffer& texture,
        NvgDrawingFunction drawFunc,
        ImVec4 clearColor = ImVec4(0.f, 0.f, 0.f, 1.f)
        );

}

