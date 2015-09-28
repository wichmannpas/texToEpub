#!/bin/bash
# This script converts a TeX file to an epub file
# Copyright (c) 2015 Pascal Wichmann

if [ "$1" == "-h" ] || [ "$1" == "" ]; then
  echo "Usage: texToEpub.sh fileName"
  echo " fileName: Name of LaTeX file to convert"
  exit 0
fi

# check if file exists
if [ ! -f "$1" ]; then
  echo "File does not eixst. Exiting."
  exit 1;
fi

# check if temporary directory exists
if [ -d ".texEpubTemp" ]; then
  echo "The temporary directory is already existing. Exiting."
  exit 1;
fi

# create temporary directory
mkdir .texEpubTemp

# generate file base name out of full file name
baseName=$(echo $1 | sed -e 's/.tex//g')

# copy input file to working directory
cp $1 .texEpubTemp/in.tex

# change to working directory
cd .texEpubTemp

# convert TeX to HTML and HTML to epub
htlatex in.tex
ebook-convert in.html out.epub

# move output epub
mv out.epub ../$baseName.epub

# remove temporary directory
cd ..
rm -rf .texEpubTemp
