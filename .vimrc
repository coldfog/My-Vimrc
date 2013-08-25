"==========================================================================
" Basic vim system settings
"==========================================================================

" replace tab with space
:set expandtab
set tabstop=4
set shiftwidth=4
set incsearch
set hidden
set hlsearch
set completeopt=menuone
set go=
set backspace=indent,eol,start
set textwidth=78

" set for display Chinese
let &termencoding=&encoding
set fileencodings=UTF-8,gbk

:filetype on
:filetype plugin on
:filetype indent on
:autocmd FileType c,cpp : set foldmethod=syntax
:autocmd FileType c,cpp :set number
:autocmd FileType c,cpp :set cindent
:autocmd FileType html :set number
:autocmd FileType javascript :set number
:autocmd FileType python :set number
:autocmd FileType python : set foldmethod=syntax
:autocmd FileType python :set autoindent
" Use Ctrl-] to search identifier's declaration or implemention if there is 
" only one matchings it will jump to there, otherwise open the matching list
map <C-]> g<C-]>
" Mapping for the quickfix next and precious commands
nmap<F5> :cp<cr>
nmap<F6> :cn<cr>

" Add the STL tags into ctags
set tags+=~/.vim/STLTags/stl.tags
" Add OpenGl tags into ctags
set tags+=~\vimfiles\OpenGL_tags

abbreviate #l =========================================================================
if has('win32')
    set guifont=Consolas:h11
endif
map <F12> :!python %<cr>

" Color scheme
syntax on
if !has('gui_running')
    let g:solarized_termcolors=256
else
    color solarized
endif
set background=dark
 " option name default optional ———————————————— 
let g:solarized_visibility= "normal"
set cursorline

"==========================================================================
" Settings for gvimfullscreen
"==========================================================================
if has('win32')
    "Fullscreen
    map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
endif


"==========================================================================
"==========================================================================
" THE PLUGINS
"==========================================================================
"==========================================================================


"==========================================================================
" Settings for pep8
"==========================================================================
let g:pep8_map='<C-F5>'

"==========================================================================
" Settings for pydoc
"==========================================================================
if has('unix')
    let g:pydoc_cmd = "/usr/lib/python2.7/pydoc.py"
elseif has('win32')
    let g:pydoc_cmd = "F:\\WinPython\\python-2.7.3\\Lib\\pydoc.py"
endif

"==========================================================================
"set for python synax
"==========================================================================
let python_highlight_all = 1

"==========================================================================
"set for ConqueTerm
"==========================================================================
let g:ConqueTerm_Color = 1

"==========================================================================
"set for code_complete
"==========================================================================
:autocmd FileType python let g:completekey = ""

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

noremap <silent> <F7> :TlistToggle<CR> 

" Display on the right side
let Tlist_Use_Right_Window=1 
" Show mutifile list at same time
let Tlist_Show_One_File=0 
" Fold these lists which is not represent curent file
let Tlist_File_Fold_Auto_Close=1 
" When taglist is the last split window in vim, exit
let Tlist_Exit_OnlyWindow=1 
" Close the taglist window when a file or tag is selected
let Tlist_Close_On_Select=0   
" Do not update taglist in realtime
let Tlist_Process_File_Always=0 
" This is set to display thie tag name instead of object name, that is to say 
" it can dispaly the arguments
let Tlist_Display_Prototype = 0
" Sort tags by name
let Tlist_Sort_Type = "name"
" let Tlist_WinWidth = 80


"==========================================================================
"set for NERD_Tree the file tree monitor
"==========================================================================
" Tells the script where to put the NERD tree
let NERDTreeWinPos="left"
" Close the window when open a file
let NERDTreeQuitOnOpen=1
"Press F10 to open the file window
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
