# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/imgui_test_engine-src"
  "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/imgui_test_engine-build"
  "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/imgui_test_engine-subbuild/imgui_test_engine-populate-prefix"
  "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/imgui_test_engine-subbuild/imgui_test_engine-populate-prefix/tmp"
  "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/imgui_test_engine-subbuild/imgui_test_engine-populate-prefix/src/imgui_test_engine-populate-stamp"
  "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/imgui_test_engine-subbuild/imgui_test_engine-populate-prefix/src"
  "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/imgui_test_engine-subbuild/imgui_test_engine-populate-prefix/src/imgui_test_engine-populate-stamp"
)

set(configSubDirs Debug)
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/imgui_test_engine-subbuild/imgui_test_engine-populate-prefix/src/imgui_test_engine-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/imgui_test_engine-subbuild/imgui_test_engine-populate-prefix/src/imgui_test_engine-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
