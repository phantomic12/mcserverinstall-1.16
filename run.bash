#! /bin/bash
set -o errexit -o pipefail -o nounset
echo "Building"
eval "$INPUT_COMMAND"
