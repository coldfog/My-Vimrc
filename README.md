My own vimrc
============

This project is my own vimrc. 

Usage
----------

Keys |Functions
----|----|
`F5` `F6` |for quickfix window
`C-F6` |for Source check under standard PEP8
`F7` |toggle taglist
`F10` |toggle NERD_Tree which is used to show the file tree of current directory
`F11` |toggle gvim to fullscreen
`C-F11` |generate commit
`F12` |run file as python script
`C-F12` |generate taglist by using ctags
`K` |show the python document of the word under cursor
`<leader>cc` |comment
`<leader>cu` |cancle comment
`<leader>d` |go to defination (for python)
`<C-N>` | autocompletion (for python)

Requirment
----------

+ Python moudle PEP8.py
+ Python moudle jedi

**For win32**

Copy gvimfullscreen_win32\gvimfullscreen.dll to where GVIM.exe is
located

You need to  patch the font file manually so that *Powerline* will display
symbol normally. If you use the Font *Consolas* you can down the font file in
[here](https://github.com/eugeneching/consolas-powerline-vim).

FQA
---

**Q:** I got an error in gvim like "An application has made an attempt to load
the C runtime library incorrectly." when I try to autocompletion some 3rd part
libraries.

**A:**This may be caused by the issue that gvim.exe can't import \*.pyd
files.This problem can be solved by this
[solution](http://stackoverflow.com/questions/9764341/runtime-error-with-vim-omnicompletiona)
