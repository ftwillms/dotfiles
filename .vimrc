filetype off
call pathogen#infect()
call pathogen#helptags()

"show filename
set modeline
set ls=2
set ruler

"show line numbers
set number

"256 colors
set t_Co=256

"Set the color scheme
syntax enable
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h15
"set background=light
"colorscheme github-new
colorscheme enlightened
set rtp+=/Users/fwilliams/powerline/powerline/bindings/vim

"Set search highlight to full word
set hlsearch
" Ignore case
set ic

"mouse support
set mouse=a

" tabs to 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab
set list listchars=tab:»·,trail:· " show extra space characters

"indentation
set autoindent
filetype on
filetype indent on
filetype plugin on

" To know where the border is...
set colorcolumn=120

" For nathanaelkane/vim-indent-guides plugin
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1
let g:indent_guides_color_change_percent=2
hi IndentGuidesEven guibg=NONE ctermbg=NONE

" For pymode
let g:pymode_folding = 0
let g:pymode_rope_complete_on_dot = 0

" we will use jedi/YCM for completion?
let g:pymode_rope_completion = 0
" let g:pymode_rope_regenerate_on_write = 0
let g:pymode_lint = 0
let g:pymode_lint_write = 0
let g:pymode_options_colorcolumn = 0

" YCM
" https://github.com/Valloric/YouCompleteMe#options
" let g:ycm_auto_trigger = 0
let g:ycm_min_num_of_chars_for_completion = 6
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_seed_identifiers_with_syntax = 1

" Syntastic
let g:syntastic_python_flake8_args = '--max-line-length=120'
let g:syntastic_python_python_exec = '/usr/local/Cellar/python3/3.5.0/Frameworks/Python.framework/Versions/3.5/bin/python3.5'

" No more swap, let git handle this!
set nobackup
set noswapfile
"set swapfile
"set dir=~/tmp

" Set bash style completion
set wildmenu

" Ignore these types of files from autocompletion!
set wildignore=*.swp,*.bak,*.pyc,*.class

"Lookup ctags 'tags' file up the directory, until one is found:
set tags=./tags,tags;
let g:ctrlp_extensions = ['tag', 'buffertag']

" No more beeping!
set visualbell
set noerrorbells

if has("unix")
  set clipboard=autoselect
  set shell=/bin/bash\ -li
endif

" Syntax group under cursor
nnoremap <leader>h :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
            \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
            \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

"This unsets the 'last search pattern' register by hitting return
nnoremap <CR> :noh<CR><CR>
