#include <pybind11/pybind11.h>
#include <pybind11/stl.h>
#include <pybind11/functional.h>


namespace py = pybind11;

void py_init_module_imgui_bundle_inner(py::module& m);
void py_init_module_hello_imgui(py::module& m);
void py_init_module_imgui_main(py::module& m);
void py_init_module_imgui_internal(py::module& m);
void py_init_module_implot(py::module& m);
void py_init_module_imgui_color_text_edit(py::module& m);
void py_init_module_imgui_node_editor(py::module& m);
void py_init_module_imgui_knobs(py::module& m);
void py_init_module_im_file_dialog(py::module& m);
void py_init_module_imspinner(py::module& m);
void py_init_module_imgui_md(py::module& m);
void py_init_module_immvision(py::module& m);
void py_init_module_imgui_backends(py::module& m);
void py_init_module_imguizmo(py::module& m);
void py_init_module_imgui_tex_inspect(py::module& m);
void py_init_module_immapp(py::module& m);


void py_init_module_imgui_bundle(py::module& m)
{
    py_init_module_imgui_bundle_inner(m);

    // imgui and its submodules
    auto module_imgui =  m.def_submodule("imgui");
    py_init_module_imgui_main(module_imgui);
    // Submodule imgui.internal
    auto module_imgui_internal =  module_imgui.def_submodule("internal");
    py_init_module_imgui_internal(module_imgui_internal);
    // Submodule imgui.backends
    auto module_imgui_backends =  module_imgui.def_submodule("backends");
    py_init_module_imgui_backends(module_imgui_backends);

    auto module_himgui =  m.def_submodule("hello_imgui");
    py_init_module_hello_imgui(module_himgui);

    auto module_implot =  m.def_submodule("implot");
    py_init_module_implot(module_implot);

    auto module_imgui_color_text_edit =  m.def_submodule("imgui_color_text_edit");
    py_init_module_imgui_color_text_edit(module_imgui_color_text_edit);

    auto module_imgui_node_editor =  m.def_submodule("imgui_node_editor");
    py_init_module_imgui_node_editor(module_imgui_node_editor);

    auto module_imgui_knobs =  m.def_submodule("imgui_knobs");
    py_init_module_imgui_knobs(module_imgui_knobs);

	auto module_im_file_dialog =  m.def_submodule("im_file_dialog");
	py_init_module_im_file_dialog(module_im_file_dialog);

    auto module_imspinner =  m.def_submodule("imspinner");
    py_init_module_imspinner(module_imspinner);

    auto module_imgui_md =  m.def_submodule("imgui_md");
    py_init_module_imgui_md(module_imgui_md);

    auto module_immvision =  m.def_submodule("immvision");
    py_init_module_immvision(module_immvision);

    auto module_imguizmo = m.def_submodule("imguizmo");
    py_init_module_imguizmo(module_imguizmo);

    auto module_imgui_tex_inspect = m.def_submodule("imgui_tex_inspect");
    py_init_module_imgui_tex_inspect(module_imgui_tex_inspect);

    auto module_immapp = m.def_submodule("immapp");
    py_init_module_immapp(module_immapp);
}


// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!  AUTOGENERATED CODE !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
// <litgen_glue_code>  // Autogenerated code below! Do not edit!

// </litgen_glue_code> // Autogenerated code end
// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!  AUTOGENERATED CODE END !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


#include "imgui_bundle/imgui_bundle.h"


void py_init_module_imgui_bundle_inner(py::module& m)
{
    using namespace ImGuiBundle;
    // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!  AUTOGENERATED CODE !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    // <litgen_pydef> // Autogenerated code below! Do not edit!
    ////////////////////    <generated_from:imgui_bundle.h>    ////////////////////
    ////////////////////    </generated_from:imgui_bundle.h>    ////////////////////

    // </litgen_pydef> // Autogenerated code end
    // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!  AUTOGENERATED CODE END !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
}
