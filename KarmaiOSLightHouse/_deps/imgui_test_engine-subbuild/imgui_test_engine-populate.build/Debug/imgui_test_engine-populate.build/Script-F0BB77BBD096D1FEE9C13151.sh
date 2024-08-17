#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps
  /opt/homebrew/Cellar/cmake/3.24.3/bin/cmake -P /Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/imgui_test_engine-subbuild/imgui_test_engine-populate-prefix/tmp/imgui_test_engine-populate-gitclone.cmake
  /opt/homebrew/Cellar/cmake/3.24.3/bin/cmake -E touch /Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/imgui_test_engine-subbuild/imgui_test_engine-populate-prefix/src/imgui_test_engine-populate-stamp/$CONFIGURATION$EFFECTIVE_PLATFORM_NAME/imgui_test_engine-populate-download
fi

