set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#begin('$HOME/.vim/bundle/')



Plugin 'l04m33/vlime', {'rtp': 'vim/'}
Plugin 'junegunn/limelight.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'spf13/vim-autoclose'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'tex/vimpreviewpandoc'
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jalvesaq/Nvim-R'
Plugin 'ervandew/screen'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'airblade/vim-gitgutter'
Plugin 'airblade/vim-rooter'
Plugin 'francoiscabrol/ranger.vim'
Plugin 'airblade/vim-accent'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-scripts/textutil.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'chrisbra/csv.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'jiangmiao/auto-pairs'
"Plugin 'vim-syntastic/syntastic'
"Plugin 'jimhester/lintr.git'
Plugin 'vim-pandoc/vim-rmarkdown'
Plugin 'ctrlpvim/ctrlp.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
set shortmess+=I
filetype plugin indent on    " required
set nocompatible                  " don't need to be compatible with old vim
set relativenumber                " show relative line numbers
set number
set showmatch                     " show bracket matches
set ignorecase                    " ignore case in search
set hlsearch                      " highlight all search matches
"set cursorline                    " highlight current line
set undofile
set undodir=~/.vim/undo/
set incsearch
set autoindent
set tabstop=4
set expandtab
set laststatus=2
set bs=2
set noshowmode
set smartcase                     " pay attention to case when caps are used
set incsearch                     " show search results as I type
"set vb                            " enable visual bell (disable audio bell)
set ruler                         " show row and column in footer
set scrolloff=2                   " minimum lines above/below cursor
set laststatus=2                  " always show status bar
set hidden
set nofoldenable                  " disable code folding
set clipboard=unnamed             " use the system clipboard
set wildmenu                      " enable bash style tab completion
set wildmode=list:longest,full
set mouse=a
let R_in_buffer = 0
"let R_clear_line = 1
let R_applescript = 0 
let R_tmux_split = 1
nmap <silent> <C-D> :NERDTreeToggle<CR>
imap <silent> <C-D> :NERDTreeToggle<CR>
set omnifunc=syntaxcomplete
au BufReadPost *Dockerfile set syntax=sh
au BufReadPost *dockerfile set syntax=sh
let g:pandoc#filetypes#handled = ["pandoc", "markdown"]
let g:pandoc#filetypes#pandoc_markdown = 0
"autocmd VimEnter * NERDTree

" put git status, column/row number, total lines, and percentage in status
set statusline=%F%m%r%h%w\ %{fugitive#statusline()}\ [%l,%c]\ [%L,%p%%]
" highlight the status bar when in insert mode
if version >= 700
    au InsertEnter * hi StatusLine ctermfg=235 ctermbg=2
    au InsertLeave * hi StatusLine ctermbg=240 ctermfg=12
endif
cmap w!! w !sudo tee % >/dev/null


"Buttons for going to previous/next file (buffer)
map <F2> :bprevious<CR>
map <F3> :bnext<CR>
"Show a list of files (buffers) that are open
map <F4> :buffers<CR>
"Yank (copy) contents of current file (buffer) - also to X11 clipboard
map <F5> :%y+<CR>
"Show name of file and path relative to current working directory
map <F6> :echo @%<CR>
"Show current working directory
map <F7> :pwd<CR>
"Close current buffer
map <F12> :bd!<CR>

"set colorcolumn=80
" set up some custom colors
"highlight clear SignColumn
"highlight VertSplit    ctermbg=236
"highlight ColorColumn  ctermbg=237
"highlight LineNr       ctermbg=236 ctermfg=240
"highlight CursorLineNr ctermbg=236 ctermfg=240
"highlight CursorLine   ctermbg=236
"highlight StatusLineNC ctermbg=238 ctermfg=0
"highlight StatusLine   ctermbg=240 ctermfg=12
"highlight IncSearch    ctermbg=3   ctermfg=1
"highlight Search       ctermbg=1   ctermfg=3
"highlight Visual       ctermbg=3   ctermfg=0
"highlight Pmenu        ctermbg=240 ctermfg=12
"highlight PmenuSel     ctermbg=3   ctermfg=1
"highlight SpellBad     ctermbg=0   ctermfg=1
"set autoindent                    " set auto indent
"set ts=2                          " set indent to 2 spaces
set t_Co=256
set nolist
let g:airline_powerline_fonts=1 "Requires powerline fonts!


let R_term = "Rterm"
let R_nvim_wd = 1
syntax on 
set encoding=utf8
set guifont=DroidSansMono\ Nerd\ Font:h11

let vim_markdown_preview_toggle=1
let vim_markdown_preview_browser='Firefox'
let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_pandoc=1

let maplocalleader = " "
let g:syntastic_enable_r_lintr_checker = 1
let g:syntastic_r_checkers = ['lintr']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" autocmd FileType r call cm#enable_for_buffer() | sleep 300m | let g:_cm_sources['R']['sort'] = 0

Plugin 'roxma/nvim-completion-manager'
Plugin 'gaalcaras/ncm-R'
Plugin 'roxma/vim-hug-neovim-rpc'
"Plugin 'sirver/UltiSnips'"
Plugin 'roxma/nvim-yarp'
if has("unix")
  let s:uname = system("uname -s")
  if s:uname == "Darwin"
    let R_term_cmd = "open -na /Applications/iTerm.app -n "
  endif
endif

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': []  }
nnoremap <C-W> :SyntasticCheck<CR>
" let g:syntastic_quiet_messages = { 'type': 'closed_curly_linter'  }
let g:airline#extension#tabline#enabled=1
let g:airline#extensions#tabline#buffer_nr_show=1
set laststatus=2 
set noshowmode
set timeoutlen=500
let g:airline_powerline_fonts=1





let g:ctrlp_open_new_file = 'r'
let g:gutentags_cache_dir = '~/.vim/tags/'


map <C-S> :SyntasticToggleMode<CR>
let R_term_cmd = "Rterm"




let R_csv_app = 'c:/Program Files/Microsoft Office/Office15/EXCEL.EXE' 
"let R_csv_delim = ','
