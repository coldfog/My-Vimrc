"==========================================================================
"set for pydoc
"==========================================================================
let g:pep8_map='<C-F5>'
"==========================================================================
"==========================================================================
"set for pydoc
"==========================================================================
let g:pydoc_cmd = "E:\\Python27\\Lib\\pydoc.py"
"==========================================================================
"set for python synax
"==========================================================================
let python_highlight_all = 1
"==========================================================================
"set for ConqueTerm
"==========================================================================
let g:ConqueTerm_Color = 1

"==========================================================================
"set for ropeVim
"==========================================================================
"let $PYTHONPATH .= \":e:\rope\rope-0.9.3:e:\rope\ropevim-0.3-rc"
"source \rope\ropevim-0.3-rc\ropevim.vim 

"==========================================================================
"set for code_complete
"==========================================================================
:autocmd FileType python let g:completekey = ""


"==========================================================================
"set for pydiction
"==========================================================================
let g:pydiction_location = 'e:\Vim\vimfiles\ftplugin\pydiction\complete-dict'

"==========================================================================
"Block of python
"==========================================================================
python << EOF
import os
import vim
hex_status = False
def toggle_hex():
    global hex_status
    if hex_status:
        vim.command(':%xxd -r')
        hex_status = False
    else:
        vim.command(':%xxd -u -g 1')
        hex_status = True
EOF
"==========================================================================
"color scheme
"==========================================================================
 " option name default optional ———————————————— 
let g:solarized_visibility= "normal"
set cursorline
"“high” or “low” 
"————————————————
"==========================================================================
"vim system set
"==========================================================================

"Fullscreen
map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
set textwidth=78
abbreviate #l =========================================================================
map <F12> :!python %<cr> 
set background=dark
color solarized
syntax on
set go=
set backspace=indent,eol,start
set guifont=Consolas:h11
"################################ version 0.1 #############################
"replace tab with space
:set expandtab
set tabstop=4
set shiftwidth=4
set incsearch
set hidden
set hlsearch
set completeopt=menuone
"set for display Chinese
let &termencoding=&encoding
set fileencodings=UTF-8,gbk
:filetype on
:filetype plugin on
:filetype indent on
:autocmd FileType c,cpp : set 
:autocmd FileType c,cpp :set number
:autocmd FileType c,cpp :set cindent
:autocmd FileType html :set number
:autocmd FileType javascript :set number
:autocmd FileType python :set number
:autocmd FileType python : set foldmethod=syntax
:autocmd FileType python :set autoindent
"set Ctrl-] to do like : if there is only one match jumpto, but if there are
"several match open the select list
map <C-]> g<C-]>
"map for the quickfix next and precious commands
nmap<F5> :cp<cr>
nmap<F6> :cn<cr>
"add the STL tags into ctags
set tags+=~/.vim/STLTags/stl.tags
"add OpenGl tags into ctags
set tags+=~\vimfiles\OpenGL_tags

"==========================================================================
"this is the set for omnicppcomplete 
"==========================================================================
"this is the line 'help' required
set nocp
filetype plugin on
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
"set omni search namespaces in the current buffer and in included files
let OmniCpp_NamespaceSearch = 2 "Search namespace in current and included file
"whether to show all memeber always
let OmniCpp_DisplayMode = 0
"AutoComplete the scope mark('::')
let OmniCpp_MayCompleteScope = 1
"display prototype in abbreviation
let OmniCpp_ShowPrototypeInAbbr = 1


"==========================================================================
"the set for taglist
"==========================================================================
"TlistUpdate可以更新tags
"map <F3> :silent! Tlist<CR> 
"press F4 open the tagslist window and move the cursor to the window
"map <F4> :silent! TlistOpen<CR> 
"press F8 to call it
noremap <silent> <F7> :TlistToggle<CR> 
noremap <silent> <F9> :TlistOpen<CR> 
"let Tlist_Ctags_Cmd='ctags' "因为我们放在环境变量里，所以可以直接执行
let Tlist_Use_Right_Window=1 "让窗口显示在右边，0的话就是显示在左边
let Tlist_Show_One_File=0 "让taglist可以同时展示多个文件的函数列表，如果想只有1个，设置为1
let Tlist_File_Fold_Auto_Close=1 "非当前文件，函数列表折叠隐藏
let Tlist_Exit_OnlyWindow=1 "当taglist是最后一个分割窗口时，自动推出vim
let Tlist_Close_On_Select=0   "Close the taglist window when a file or tag is selected
"是否一直处理tags.1:处理;0:不处理
let Tlist_Process_File_Always=0 "不是一直实时更新tags，因为没有必要
"this is set to display thie tag name instead ofobject name, that is to say it can dispaly the argument
let Tlist_Display_Prototype = 0
"sort tags by name
let Tlist_Sort_Type = "name"
"let Tlist_WinWidth = 80


"==========================================================================
"set for NERD_Tree the file tree monitor
"==========================================================================
" Tells the script where to put the NERD tree
let NERDTreeWinPos="left"
"close the window when open a file
let NERDTreeQuitOnOpen=1
"Press F9 to open the file window
noremap <silent> <F10> :NERDTreeToggle<CR>


"=========================================================================
"set for DoxygenTookit the auto comment tool
"=========================================================================
map <C-F11> : Dox<cr>
let g:DoxygenToolkit_authorName="yyaofeng"
"let g:DoxygenToolkit_briefTag_funcName = "no"
"let g:DoxygenToolkit_maxFunctionProtoLines = 30

" Add name of function/class/struct... after pre brief tag if you want
let g:DoxygenToolkit_briefTag_className = "yes"
let g:DoxygenToolkit_briefTag_structName = "yes"
let g:DoxygenToolkit_briefTag_enumName = "yes"
let g:DoxygenToolkit_briefTag_namespaceName = "yes"
let g:DoxygenToolkit_briefTag_funcName = "yes"

" Keep empty line (if any) between comment and function/class/...
let g:DoxygenToolkit_keepEmptyLineAfterComment = "no"

"=========================================================================
"set for MiniBufExplorer the buffers management`
"=========================================================================
"set this option you can use Ctrl+[hjkl] to explore the buffer, but it doesn't
"work in my vim. you can try it
let g:miniBufExplMapCTabSwitchBufs = 1
