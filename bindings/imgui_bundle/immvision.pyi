"""Markdown for ImGui
Python bindings for https://github.com/mekhontsev/imgui_md (with an additional custom wrapper)
"""

# type: ignore
from typing import Tuple, Callable
import numpy as np
import enum



# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!  AUTOGENERATED CODE !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# <litgen_stub> // Autogenerated code below! Do not edit!
####################    <generated_from:immvision.h>    ####################
# THIS FILE WAS GENERATED AUTOMATICALLY. DO NOT EDIT.

# ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#                       src/immvision/immvision.h                                                              //
# //////////////////////////////////////////////////////////////////////////////////////////////////////////////

# ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#                       src/immvision/image.h included by src/immvision/immvision.h                            //
# //////////////////////////////////////////////////////////////////////////////////////////////////////////////

# IMMVISION_API is a marker for public API functions. IMMVISION_STRUCT_API is a marker for public API structs (in comment lines)
# Usage of ImmVision as a shared library is not recommended. No guaranty of ABI stability is provided

""" namespace ImmVision"""

class ColormapScaleFromStatsData:
    """Scale the Colormap according to the Image  stats

    IMMVISION_API_STRUCT
    """

    # Are we using the stats on the full image?
    # If ActiveOnFullImage and ActiveOnROI are both False, then ColormapSettingsData.ColormapScaleMin/Max will be used
    active_on_full_image: bool = True
    # Are we using the stats on the ROI?
    # If ActiveOnFullImage and ActiveOnROI are both False, then ColormapSettingsData.ColormapScaleMin/Max will be used
    # Note: ActiveOnROI and ActiveOnFullImage cannot be True at the same time!
    active_on_roi: bool = False
    # If active (either on ROI or on Image), how many sigmas around the mean should the Colormap be applied
    nb_sigmas: float = 1.5
    # If UseStatsMin is True, then ColormapScaleMin will be calculated from the matrix min value instead of a sigma based value
    use_stats_min: bool = False
    # If UseStatsMin is True, then ColormapScaleMax will be calculated from the matrix max value instead of a sigma based value
    use_stats_max: bool = False

class ColormapSettingsData:
    """Colormap Settings (useful for matrices with one channel, in order to see colors mapping float values)

    IMMVISION_API_STRUCT
    """

    # Colormap, see available Colormaps with AvailableColormaps()
    # Work only with 1 channel matrices, i.e len(shape)==2
    colormap: str = "None"

    # ColormapScaleMin and ColormapScaleMax indicate how the Colormap is applied:
    #     - Values in [ColormapScaleMin, ColomapScaleMax] will use the full colormap.
    #     - Values outside this interval will be clamped before coloring
    # by default, the initial values are ignored, and they will be updated automatically
    # via the options in ColormapScaleFromStats
    colormap_scale_min: float = 0.0
    colormap_scale_max: float = 1.0

    # If ColormapScaleFromStats.ActiveOnFullImage or ColormapScaleFromStats.ActiveOnROI,
    # then ColormapScaleMin/Max are ignored, and the scaling is done according to the image stats.
    # ColormapScaleFromStats.ActiveOnFullImage is True by default
    colormap_scale_from_stats: ColormapScaleFromStatsData = ColormapScaleFromStatsData()

    # Internal value: stores the name of the Colormap that is hovered by the mouse
    internal_colormap_hovered: str = ""

class MouseInformation:
    """Contains information about the mouse inside an image

    IMMVISION_API_STRUCT
    """

    # Is the mouse hovering the image
    is_mouse_hovering: bool = False

    # Mouse position in the original image/matrix
    # This position is given with float coordinates, and will be (-1., -1.) if the mouse is not hovering the image
    mouse_position: cv.Point2 = cv.Point2(-1.0, -1.0)
    # Mouse position in the displayed portion of the image (the original image can be zoomed,
    # and only show a subset if it may be shown).
    # This position is given with integer coordinates, and will be (-1, -1) if the mouse is not hovering the image
    mouse_position_displayed: cv.Point = cv.Point(-1, -1)

    #
    # Note: you can query ImGui::IsMouseDown(mouse_button) (c++) or imgui.is_mouse_down(mouse_button) (Python)
    #

class ImageParams:
    """Set of display parameters and options for an Image

    IMMVISION_API_STRUCT
    """

    #
    # ImageParams store the parameters for a displayed image
    # (as well as user selected watched pixels, selected channel, etc.)
    # Its default constructor will give them reasonable choices, which you can adapt to your needs.
    # Its values will be updated when the user pans or zooms the image, adds watched pixels, etc.
    #

    #
    # Refresh Images Textures
    #

    # Refresh Image: images textures are cached. Set to True if your image matrix/buffer has changed
    # (for example, for live video images)
    refresh_image: bool = False

    #
    # Display size and title
    #

    # Size of the displayed image (can be different from the matrix size)
    # If you specify only the width or height (e.g (300, 0), then the other dimension
    # will be calculated automatically, respecting the original image w/h ratio.
    image_display_size: cv.Size = cv.Size()

    #
    # Zoom and Pan (represented by an affine transform matrix, of size 3x3)
    #

    # ZoomPanMatrix can be created using MakeZoomPanMatrix to create a view centered around a given point
    zoom_pan_matrix: cv.Matx33 = cv.Matx33.eye()
    # If displaying several images, those with the same ZoomKey will zoom and pan together
    zoom_key: str = ""

    #
    # Colormap Settings (useful for matrices with one channel, in order to see colors mapping float values)
    #
    # ColormapSettings stores all the parameter concerning the Colormap
    colormap_settings: ColormapSettingsData = ColormapSettingsData()
    # If displaying several images, those with the same ColormapKey will adjust together
    colormap_key: str = ""

    #
    # Zoom and pan with the mouse
    #
    pan_with_mouse: bool = True
    zoom_with_mouse_wheel: bool = True

    # Color Order: RGB or RGBA versus BGR or BGRA (Note: by default OpenCV uses BGR and BGRA)
    is_color_order_bgr: bool = True

    #
    # Image display options
    #
    # if SelectedChannel >= 0 then only this channel is displayed
    selected_channel: int = -1
    # Show a "school paper" background grid
    show_school_paper_background: bool = True
    # show a checkerboard behind transparent portions of 4 channels RGBA images
    show_alpha_channel_checkerboard: bool = True
    # Grid displayed when the zoom is high
    show_grid: bool = True
    # Pixel values show when the zoom is high
    draw_values_on_zoomed_pixels: bool = True

    #
    # Image display options
    #
    # Show matrix type and size
    show_image_info: bool = True
    # Show pixel values
    show_pixel_info: bool = True
    # Show buttons that enable to zoom in/out (the mouse wheel also zoom)
    show_zoom_buttons: bool = True
    # Open the options panel
    show_options_panel: bool = False
    # If set to True, then the option panel will be displayed in a transient tooltip window
    show_options_in_tooltip: bool = False
    # If set to False, then the Options button will not be displayed
    show_options_button: bool = True

    #
    # Watched Pixels
    #
    # List of Watched Pixel coordinates
    watched_pixels: List[cv.Point] = List[cv.Point]()
    # Shall we add a watched pixel on double click
    add_watched_pixel_on_double_click: bool = True
    # Shall the watched pixels be drawn on the image
    highlight_watched_pixels: bool = True

    # Mouse position information. These values are filled after displaying an image
    mouse_info: MouseInformation = MouseInformation()

def factor_image_params_display_only() -> ImageParams:
    """Create ImageParams that display the image only, with no decoration, and no user interaction"""
    pass

def make_zoom_pan_matrix(
    zoom_center: cv.Point2, zoom_ratio: float, displayed_image_size: cv.Size
) -> cv.Matx33:
    """Create a zoom/pan matrix centered around a given point of interest"""
    pass

def make_zoom_pan_matrix_scale_one(
    image_size: cv.Size, displayed_image_size: cv.Size
) -> cv.Matx33:
    pass

def make_zoom_pan_matrix_full_view(
    image_size: cv.Size, displayed_image_size: cv.Size
) -> cv.Matx33:
    pass

def image(label_id: str, mat: cv.Mat, params: ImageParams) -> None:
    """Display an image, with full user control: zoom, pan, watch pixels, etc.

    :param label_id
        A legend that will be displayed.
        Important notes:
            - With ImGui and ImmVision, widgets *must* have a unique Ids.
              For this widget, the id is given by this label.
              Two widgets (for example) two images *cannot* have the same label or the same id!

              If they do, they might not refresh correctly!
              To circumvent this, you can:
                 - Call `ImGui::PushID("some_unique_string")` at the start of your function,
                   and `ImGui::PopID()` at the end.
                 - Or modify your label like this:
                     "MyLabel##some_unique_id"
                     (the part after "##" will not be displayed but will be part of the id)
           - To display an empty legend, use "##_some_unique_id"

    :param mat
        An image you want to display, under the form of an OpenCV matrix. All types of dense matrices are supported.

    :param params
        Complete options (as modifiable inputs), and outputs (mouse position, watched pixels, etc)
        @see ImageParams structure.
        The ImageParams may be modified by this function: you can extract from them
        the mouse position, watched pixels, etc.
        Important note:
            ImageParams is an input-output parameter, passed as a pointer.
            Its scope should be wide enough so that it is preserved from frame to frame.
            !! If you cannot zoom/pan in a displayed image, extend the scope of the ImageParams !!

    - This function requires that both imgui and OpenGL were initialized.
      (for example, use `imgui_runner.run`for Python,  or `HelloImGui::Run` for C++)
    """
    pass

def image_display(
    label_id: str,
    mat: cv.Mat,
    image_display_size: cv.Size = cv.Size(),
    refresh_image: bool = False,
    show_options_button: bool = False,
    is_bgr_or_bgra: bool = True,
) -> cv.Point2:
    """Only, display the image, with no decoration, and no user interaction (by default)

    Parameters:
    :param label
        A legend that will be displayed.
        Important notes:
            - With ImGui and ImmVision, widgets must have a unique Ids. For this widget, the id is given by this label.
              Two widgets (for example) two images *cannot* have the same label or the same id!
              If they do, they might not refresh correctly!
              To circumvent this, you can modify your label like this:
                 "MyLabel##some_unique_id"    (the part after "##" will not be displayed but will be part of the id)
           - To display an empty legend, use "##_some_unique_id"

    :param Mat:
        An image you want to display, under the form of an OpenCV matrix. All types of dense matrices are supported.

    :param imageDisplaySize:
        Size of the displayed image (can be different from the mat size)
        If you specify only the width or height (e.g (300, 0), then the other dimension
        will be calculated automatically, respecting the original image w/h ratio.

    :param refreshImage:
        images textures are cached. Set to True if your image matrix/buffer has changed
        (for example, for live video images)

    :param showOptionsButton:
        If True, show an option button that opens the option panel.
        In that case, it also becomes possible to zoom & pan, add watched pixel by double-clicking, etc.

    :param isBgrOrBgra:
        set to True if the color order of the image is BGR or BGRA (as in OpenCV, by default)

    :return:
         The mouse position in `mat` original image coordinates, as double values.
         (i.e. it does not matter if imageDisplaySize is different from mat.size())
         It will return (-1., -1.) if the mouse is not hovering the image.

         Note: use ImGui::IsMouseDown(mouse_button) (C++) or imgui.is_mouse_down(mouse_button) (Python)
               to query more information about the mouse.

    Note: this function requires that both imgui and OpenGL were initialized.
          (for example, use `imgui_runner.run`for Python,  or `HelloImGui::Run` for C++)

    """
    pass

def available_colormaps() -> List[str]:
    """Return the list of the available color maps
    Taken from https://github.com/yuki-koyama/tinycolormap, thanks to Yuki Koyama
    """
    pass

def clear_texture_cache() -> None:
    """Clears the internal texture cache of immvision (this is done automatically at exit time)

    Note: this function requires that both imgui and OpenGL were initialized.
          (for example, use `imgui_runner.run`for Python,  or `HelloImGui::Run` for C++)
    """
    pass

def get_cached_rgba_image(label_id: str) -> cv.Mat:
    """Returns the RGBA image currently displayed by ImmVision::Image or ImmVision::ImageDisplay
    Note: this image must be currently displayed. This function will return the transformed image
    (i.e with ColorMap, Zoom, etc.)
    """
    pass

def version_info() -> str:
    """Return immvision version info"""
    pass

# ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#                       src/immvision/immvision.h continued                                                    //
# //////////////////////////////////////////////////////////////////////////////////////////////////////////////

# ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#                       src/immvision/inspector.h included by src/immvision/immvision.h                        //
# //////////////////////////////////////////////////////////////////////////////////////////////////////////////

""" namespace ImmVision"""
####################    </generated_from:immvision.h>    ####################

# </litgen_stub> // Autogenerated code end!
