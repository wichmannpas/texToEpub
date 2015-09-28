TexToEpub
=============

This is a shell script that converts an (La)TeX file to an EPUB file using TeX4ht and Calibre.

Requirements
------------

  * TeX4ht (*htlatex*)
  * Calibre (*ebook-convert*)

Usage
-----

Run the script ./texToEpub.sh specifying the file name without the *.tex* extension of your TeX file which should be converted as only parameter. For example to convert a file named *test.tex* to epub, use

    ./texToEpub.sh test

Which results in a file called *test.epub*.

License
-------

Copyright 2015 Pascal Wichmann

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.


----------------------------

Scripts and documentation written by Pascal Wichmann, copyright (c) 2015
