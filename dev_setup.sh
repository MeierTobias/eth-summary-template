#!/bin/sh
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        # Linux
        sed '0,/{'"$1"'}/s//{'"$2"'}/' -i var.tex
elif [[ "$OSTYPE" == "darwin"* ]]; then
        # Mac OSX
        # echo 's/{'"$1"'}/{'"$2"'}/'
        sed -i '' 's/{'"$1"'}/{'"$2"'}/' var.tex
fi