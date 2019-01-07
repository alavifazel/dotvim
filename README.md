This is my optimal Vim config. Some of the main configs are as follows: 

* d/dd doesn't cut the text; it deletes it (to cut, use Visual Mode + x)
* Vim won't uses it's own buffer; it'll use systems clipboard. So cutting/pasting stuff from Vim to other apps and vice versa will be convenient.
* F9 runs and shows the output of the Python script currently opened by Vim.
* No toolbar on GVim.
* NERDTree automatically opens on Vim startup.
* Saving file can be done by C-s keyboard shortcut other than :w .
For more info, see the commented lines at the beginning of the *vimrc* file.

## Installation
If you're using Linux/Mac and you have git installed, run the *installer.sh*. It will install Vundle for you and **overwrites** your vim config with this one. If you're using Windows, manually install Vundle and replace your vimrc file with the one in this repo.

## Colorscheme
This config uses [vim-orbital](http://www.github.com/fcpg/vim-orbital) colorscheme. The colors are as follows:

|Hex||
|-------|--------|
|#000000|#262626|
|#5f5f5f|#949494|
|#bcbcbc|#e4e4e4|
|#ffd7af|#d7af87|
|#af875f|#5f87d7|
|#5f87af|#87afd7|
|#5fafff|#0087d7|
|#005faf|#0000d7|

## Screenshot

![](img/screenshot1.png?raw=true)
