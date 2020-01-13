" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" https://vimawesome.com/

Plug 'vim-nerdtree/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'flazz/vim-colorschemes'
Plug 'vim-scripts/OmniCppComplete'
Plug 'brookhong/cscope.vim'
Plug 'vim-scripts/ctags.vim'
Plug 'vim-scripts/taglist.vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'ddollar/nerdcommenter'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-markdown'
Plug 'vim-scripts/AutoComplPop'
Plug 'vim-scripts/TagHighlight'

" Initialize plugin system
call plug#end()
 
" 设置外观 -------------------------------------
set number                      "显示行号 
set showtabline=0               "隐藏顶部标签栏"
set guioptions-=r               "隐藏右侧滚动条" 
set guioptions-=L               "隐藏左侧滚动条"
set guioptions-=b               "隐藏底部滚动条"
set cursorline                  "突出显示当前行"
set cursorcolumn                "突出显示当前列"
set langmenu=zh_CN.UTF-8        "显示中文菜单
" 变成辅助 -------------------------------------
syntax on                           "开启语法高亮
set nowrap                      "设置代码不折行"
set fileformat=unix             "设置以unix的格式保存文件"
set cindent                     "设置C样式的缩进格式"
set tabstop=4                   "一个 tab 显示出来是多少个空格，默认 8
set shiftwidth=4                "每一级缩进是多少个空格
set backspace+=indent,eol,start "set backspace&可以对其重置
set showmatch                   "显示匹配的括号"
set scrolloff=5                 "距离顶部和底部5行"
set laststatus=2                "命令行为两行"
" 其他杂项 -------------------------------------
set mouse=a                     "启用鼠标"
set selection=exclusive
set selectmode=mouse,key
set matchtime=5
set ignorecase                  "忽略大小写"
set incsearch
set hlsearch                    "高亮搜索项"
set expandtab
set whichwrap+=<,>,h,l
set autoread
syntax on

"bobo begin

set nobackup
set noswapfile
set ignorecase smartcase
set incsearch
set hlsearch 
set showmatch
set hidden
set smartindent
set cmdheight=1
set clipboard+=unnamed
set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离
set cindent shiftwidth=4
set autoindent shiftwidth=4

filetype plugin indent on

set wildmenu
set wildignore+=*.o,*~
set suffixes+=.in,.a

" scheme molokai
set t_Co=256
colorscheme molokai

" Tlist
let Tlist_WinWidth=30
let Tlist_Show_One_File=1     "不同时显示多个文件的tag，只显示当前文件的    
let Tlist_Exit_OnlyWindow=1   "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Show_Menu=1
let Tlist_Use_Left_Window=1
let Tlist_Auto_Open=1
let Tlist_Compact_Format=1

" NerdTree
let NERDTreeWinPos="right"

" ctag
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
set tags=tags;/
set autochdir

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" cscope
if has("cscope")
	set csprg=/usr/bin/cscope
	if has("quickfix")
		set cscopequickfix=s-,c-,d-,i-,t-,e-,f-,g-
	endif
	set nocscopetag
	set cscopetagorder=0
	set nocsverb
	if filereadable("cscope.out")
		cs add cscope.out
	endif
endif

" omnicppcomplete
set nocp
set completeopt=preview,menu,longest 
let OmniCpp_MayCompleteDot=1
let OmniCpp_MayCompleteArrow=1
let OmniCpp_MayCompleteScope=1
let OmniCpp_SelectFirstItem=2
let OmniCpp_NamespaceSearch=2
let OmniCpp_ShowPrototypeInAbbr=1
let OmniCpp_GlobalScopeSearch=1
let OmniCpp_DisplayMode=1
let OmniCpp_DefaultNamespaces=["std"]

" Statusline
set laststatus=2
set statusline=
set statusline+=%-3.3n
set statusline+=%F\
set statusline+=%h%m%r%w
set statusline+=%k
set statusline+=%=
set statusline+=%-10.(%l,%c%V%)\ %<%P


"-------------------------------------------------------------------------------
" comma always followed by a space
"-------------------------------------------------------------------------------
inoremap  ,  ,<Space>
"
"-------------------------------------------------------------------------------
" autocomplete parenthesis, brackets and braces
"-------------------------------------------------------------------------------
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
"
vnoremap ( s()<Esc>P<Right>%
vnoremap [ s[]<Esc>P<Right>%
vnoremap { s{}<Esc>P<Right>%
"
"-------------------------------------------------------------------------------
" autocomplete quotes (visual and select mode)
"-------------------------------------------------------------------------------
xnoremap  '  s''<Esc>P<Right>
xnoremap  "  s""<Esc>P<Right>
xnoremap  `  s``<Esc>P<Right>

"-------------------------------------------------------------------------------
" additional mapping : complete a classical C comment: '/*' => '/* | */'
"-------------------------------------------------------------------------------
inoremap  <buffer>  /*       /*<Space><Space>*/<Left><Left><Left>
vnoremap  <buffer>  /*      s/*<Space><Space>*/<Left><Left><Left><Esc>p
"
"-------------------------------------------------------------------------------
" additional mapping : complete a classical C multi-line comment: 
"                      '/*<CR>' =>  /*
"                                    * |
"                                    */
"-------------------------------------------------------------------------------
inoremap  <buffer>  /*<CR>  /*<CR><CR>/<Esc>kA<Space>
"
"-------------------------------------------------------------------------------
" additional mapping : {<CR> always opens a block
"-------------------------------------------------------------------------------
inoremap  <buffer>  {<CR>    {<CR>}<Esc>O
vnoremap  <buffer>  {<CR>   S{<CR>}<Esc>Pk=iB

