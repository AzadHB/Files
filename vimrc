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
set paste
syntax on

"bobo begin

set nobackup
set noswapfile
set ignorecase smartcase
set incsearch
set hlsearch 
set showmatch
set matchtime=2
set hidden
set smartindent
set cmdheight=1
set clipboard+=unnamed
set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离

" scheme molokai
set t_Co=256
colorscheme molokai

" Tlist
let Tlist_Show_One_File=1     "不同时显示多个文件的tag，只显示当前文件的    
let Tlist_Exit_OnlyWindow=1   "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Show_Menu=1
let Tlist_Use_Left_Window=1
let Tlist_Auto_Open=1
let Tlist_Compact_Format=1

" NerdTree
let NERDTreeWinPos="right"

" ctag
filetype on
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
set tags=tags;/
set autochdir

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" omnicpp
set nocp    
filetype plugin on

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
