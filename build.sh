#!/bin/bash

# saner programming env: these switches turn some bugs into errors
set -o errexit -o pipefail -o noclobber -o nounset

jekyll clean
SASS_SILENCE_DEPRECATIONS=import,global-builtin jekyll build --incremental --watch
