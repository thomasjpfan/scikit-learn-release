#!/bin/bash

set -euxo pipefail

PROJECT_DIR="${1:-$PWD}"
NUMPY_SRC_DIR="${1:-$PWD}/scikit-learn-src"
LICENSE_FILE="$NUMPY_SRC_DIR/COPYING"

echo "" >>"$LICENSE_FILE"
echo "----" >>"$LICENSE_FILE"
echo "" >>"$LICENSE_FILE"

if [[ $RUNNER_OS == "Linux" ]]; then
    cat $PROJECT_DIR/tools/LICENSE_linux.txt >>"$LICENSE_FILE"
elif [[ $RUNNER_OS == "macOS" ]]; then
    cat $PROJECT_DIR/tools/LICENSE_macos.txt >>"$LICENSE_FILE"
elif [[ $RUNNER_OS == "Windows" ]]; then
    cat $PROJECT_DIR/tools/LICENSE_windows.txt >>"$LICENSE_FILE"
fi
