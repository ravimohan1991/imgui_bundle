#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/imgui_test_engine-subbuild
  /opt/homebrew/Cellar/cmake/3.24.3/bin/cmake -E make_directory /Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/imgui_test_engine-subbuild/CMakeFiles/$CONFIGURATION$EFFECTIVE_PLATFORM_NAME
  /opt/homebrew/Cellar/cmake/3.24.3/bin/cmake -E touch /Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/imgui_test_engine-subbuild/CMakeFiles/$CONFIGURATION$EFFECTIVE_PLATFORM_NAME/imgui_test_engine-populate-complete
  /opt/homebrew/Cellar/cmake/3.24.3/bin/cmake -E touch /Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/imgui_test_engine-subbuild/imgui_test_engine-populate-prefix/src/imgui_test_engine-populate-stamp/$CONFIGURATION$EFFECTIVE_PLATFORM_NAME/imgui_test_engine-populate-done
fi

