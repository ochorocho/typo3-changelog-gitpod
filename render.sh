#!/usr/bin/bash

CORE_EXTENSIONS=$(ls typo3-core/typo3/sysext)
CURRENT_DIR=$(pwd)
eval "$(docker run --rm t3docs/render-documentation:develop show-shell-commands)"

for extension in $CORE_EXTENSIONS
do
  docPath="$CURRENT_DIR/typo3-core/typo3/sysext/$extension/"
  if [ -d "$docPath" ] ; then
    echo "$extension"
    cd "$docPath" || exit
    dockrun_t3rd makehtml-no-cache
  fi
done
