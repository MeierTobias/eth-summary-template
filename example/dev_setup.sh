#!/bin/sh
sed '0,/{'"$1"'}/s//{'"$2"'}/' -i var.tex