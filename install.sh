#!/bin/bash

REPOSITORY="https://github.com/cbillowes/prettier/blob/main"
EDITOR_FILE="$REPOSITORY/.editorconfig"
PRETTIER_IGNORE_FILE="$REPOSITORY/.prettierignore"
PRETTIERRC_FILE="$REPOSITORY/.prettierrc"

echo "Drop-in prettier config from $REPOSITORY."
echo "Usage: $(basename $0) <path> - path to copy to relative to present working directory"

OUTPUT_DIR=$(cd $(dirname $1) && pwd)/$(basename $1)

echo "Dropping in..."
curl -s $EDITOR_FILE >$OUTPUT_DIR/.editorconfig
curl -s $PRETTIER_IGNORE_FILE >$OUTPUT_DIR/.prettierignore
curl -s $PRETTIERRC_FILE >$OUTPUT_DIR/.prettierrc

echo "Done! 🎉"
