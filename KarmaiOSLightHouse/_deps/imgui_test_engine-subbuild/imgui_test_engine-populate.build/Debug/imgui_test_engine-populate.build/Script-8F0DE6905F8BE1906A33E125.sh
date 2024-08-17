#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/imgui_test_engine-src
  /opt/homebrew/Cellar/cmake/3.24.3/bin/cmake -P /Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/imgui_test_engine-subbuild/imgui_test_engine-populate-prefix/tmp/imgui_test_engine-populate-gitupdate.cmake
fi

