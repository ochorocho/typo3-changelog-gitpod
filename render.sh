#!/usr/bin/bash

CORE_EXTENSIONS=$(ls typo3/sysext)
CURRENT_DIR=$(pwd)

for extension in $CORE_EXTENSIONS
do
  cd $CURRENT_DIR/typo3/sysext/$extension/Documentation
  eval "$(docker run --rm t3docs/render-documentation:develop show-shell-commands)"
  dockrun_t3rd makehtml-no-cache
done