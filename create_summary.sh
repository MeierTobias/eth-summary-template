#!/bin/bash

NEW_REL_PATH="../eth-reinforcement-learning/"
NEW_REPO="eth-reinforcement-learning"
NEW_DESC_LONG="Foundations of Reinforcement Learning"
NEW_SEMESTER="FS25"
USER_NAME="juripfammatter"
SUMMARY_AUTHORS="Juri Pfammatter"

# TODO: check if this works on linux (-R flag)
echo "copy repo"
cp -Ra ./example/summary_template/. $NEW_REL_PATH
cp -Ra ./example/main.tex $NEW_REL_PATH/src

echo "rename new repo"
mv "$NEW_REL_PATH.vscode/eth-repo-name.code-workspace" "$NEW_REL_PATH.vscode/$NEW_REPO.code-workspace"

# TODO: check if this works on linux
export LANG=C 
export LC_CTYPE=C

find $NEW_REL_PATH -type f -print0 | xargs -0 sed -i '' -e "s/ETHZ Summary Description/$NEW_DESC_LONG/g"
find $NEW_REL_PATH -type f -print0 | xargs -0 sed -i '' -e "s/eth-repo-name/$NEW_REPO/g"
find $NEW_REL_PATH -type f -print0 | xargs -0 sed -i '' -e "s/user-name/$USER_NAME/g"
find $NEW_REL_PATH -type f -print0 | xargs -0 sed -i '' -e "s/new-semester/$NEW_SEMESTER/g"
find $NEW_REL_PATH -type f -print0 | xargs -0 sed -i '' -e "s/summary-authors/$SUMMARY_AUTHORS/g"

echo "add template as submodule"
cd $NEW_REL_PATH && git submodule add https://github.com/MeierTobias/eth-summary-template.git src/template

echo "all done"