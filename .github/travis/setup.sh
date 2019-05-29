#!/bin/bash

source .github/travis/common.sh
set -e

$SPACER

start_section "vtr.setup" "${GREEN}Setting up..${NC}"

# Cleanup any cached build artifacts
if [ "$TRAVIS_BUILD_STAGE_NAME" = "Build" ]; then
	echo "Cleaning up any previous builds"
	rm -rf $BUILD_DIR
	rm -rf $PREFIX
fi

make version

end_section "vtr.setup"

$SPACER
