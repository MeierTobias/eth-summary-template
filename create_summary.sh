#!/bin/bash

NEW_REL_PATH="../eth-dyn-prog-opt-cont/"
NEW_REPO="eth-dyn-prog-opt-cont"
NEW_DESC_LONG="Dynamic Programming and Optimal Control"

echo "copy repo"
cp -Ra ./example/summary_template/. $NEW_REL_PATH
cp -Ra ./example/main.tex $NEW_REL_PATH/src

echo "rename new repo"
mv "$NEW_REL_PATH.vscode/eth-repo-name.code-workspace" "$NEW_REL_PATH.vscode/$NEW_REPO.code-workspace"

export LANG=C
export LC_CTYPE=C

find $NEW_REL_PATH -type f -print0 | xargs -0 sed -i '' -e "s/ETHZ Summary Description/$NEW_DESC_LONG/g"
find $NEW_REL_PATH -type f -print0 | xargs -0 sed -i '' -e "s/eth-repo-name/$NEW_REPO/g"

echo "add template as submodule"
cd $NEW_REL_PATH && git submodule add https://github.com/MeierTobias/eth-summary-template.git src/template

echo "all done"