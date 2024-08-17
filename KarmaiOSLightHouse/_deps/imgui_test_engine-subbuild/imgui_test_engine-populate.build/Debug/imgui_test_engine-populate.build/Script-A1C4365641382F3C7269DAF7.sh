#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/imgui_test_engine-build
  /opt/homebrew/Cellar/cmake/3.24.3/bin/cmake -E echo_append
  /opt/homebrew/Cellar/cmake/3.24.3/bin/cmake -E touch /Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/imgui_test_engine-subbuild/imgui_test_engine-populate-prefix/src/imgui_test_engine-populate-stamp/$CONFIGURATION$EFFECTIVE_PLATFORM_NAME/imgui_test_engine-populate-configure
fi

