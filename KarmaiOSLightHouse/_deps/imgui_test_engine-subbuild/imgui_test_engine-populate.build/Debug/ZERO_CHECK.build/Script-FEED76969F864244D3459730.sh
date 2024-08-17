#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/imgui_test_engine-subbuild
  make -f /Users/cowboy/imgui_bundle/KarmaiOSLightHouse/_deps/imgui_test_engine-subbuild/CMakeScripts/ReRunCMake.make
fi

