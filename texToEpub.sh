#!/bin/bash
# This script converts a TeX file to an epub file
# Copyright (c) 2015 Pascal Wichmann

if [ "$1" == "-h" ] || [ "$1" == "" ]; then
  echo "Usage: texToEpub.sh fileBaseName"
  echo " fileBaseName: Base name of LaTeX file which should be converted to EPUB (i.e. without *.tex file extension)"
  exit 0
fi

htlatex $1.tex
ebook-convert $1.html $1.epub
