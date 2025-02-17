#!/bin/sh
COMMAND="latexmk -xelatex -cd -interaction=nonstopmode -file-line-error -jobname=main_full -outdir=../build ./src/main.tex ; 
    sed '0,/{1}/s//{0}/' -i src/var.tex ; 
    latexmk -xelatex -cd -interaction=nonstopmode -file-line-error -jobname=main -outdir=../build ./src/main.tex ;
    sed '0,/{0}/s//{1}/' -i src/var.tex"
exec docker run --rm -i --user="$(id -u):$(id -g)" --net=none --env HOME=../build -v "$PWD":/usr/src/app -w /usr/src/app texlive/texlive:latest sh  -c "$COMMAND"