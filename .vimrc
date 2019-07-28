" -----------------------------------------------------------------------------
" Name:      vimrc
" Author:    @ibsinator
" Created:   2018
" Modified:  July 17 2019
" License:   BSD 3-Clause License
" -----------------------------------------------------------------------------


" General settings ------------------------------------------------------------
set confirm                " Vim will prompt for saving on exit.
set noerrorbells           " Disable bell.
set novisualbell           " Disable visible bell.
set t_vb=                  " Disable flashing screen for bell.


" Interface -------------------------------------------------------------------
colorscheme EyeCandy       " Use color scheme EyeCandy.
set number                 " Show line numbers.
set showmatch              " Highlight matching parenthesis.
set cursorline             " Highlight current line.
set noruler                " Hide ruler.
set colorcolumn=80


" Editing ---------------------------------------------------------------------
set autoindent             " Use same indentation as the line above.
set smartindent            " Make it behave as exxpected.
set expandtab              " Use space in stead of tab.
set tabstop=4              " Number of spaces when pressing 'Tab'.
set shiftwidth=4           " Number of spaces for indentation.
set softtabstop=4          " Number of spaces the cursor move for 'Tab'.

" Enable indentation based on file type.
" Config is located under ~/.vim/after/ftplugin
if has ("autocmd")
  filetype plugin indent on
endif

" Make Vim interpret all shell files as bash.
let b:is_bash=1


" Settings for search ---------------------------------------------------------
set history=1000           " Command history.
set hlsearch               " Highlight search results.
set incsearch              " Start searching while writing.
set ignorecase             " Ignore case.
set smartcase              " Ignore case unless using uppercase.
set wildmenu               " A more advanced command history.


" -----------------------------------------------------------------------------
" STATUS LINE -----------------------------------------------------------------
" -----------------------------------------------------------------------------

set laststatus=2           " Activate the status bar.
set noshowmode             " Hide mode.

" Dictionary containing all modes ---------------------------------------------
let g:currentmode={
    \ 'n'      : 'NORMAL',
    \ 'no'     : 'NORMAL-OPERATOR PENDING',
    \ 'v'      : 'VISUAL',
    \ 'V'      : 'V-LINE',
    \ "\<C-V>" : 'V-BLOCK',
    \ 's'      : 'SELECT',
    \ 'S'      : 'S-LINE',
    \ "\<C-S>" : 'S-BLOCK',
    \ 'i'      : 'INSERT',
    \ 'R'      : 'REPLACE',
    \ 'Rv'     : 'V-REPLACE',
    \ 'c'      : 'COMMAND',
    \ 'cv'     : 'VIM EX',
    \ 'ce'     : 'EX',
    \ 'r'      : 'PROMPT',
    \ 'rm'     : 'MORE',
    \ 'r?'     : 'CONFIRM',
    \ '!'      : 'SHELL',
    \ 't'      : 'TERMINAL'
    \}

" Define the components of the status bar -------------------------------------
set statusline=
set statusline+=%0*\ \ \ %{g:currentmode[mode()]}\ \ \  " MODE.
set statusline+=%1*\ \ %<%F\                            " File path.
set statusline+=%1*\ %Y\                                " File type.
set statusline+=%1*\ %{''.(&fenc!=''?&fenc:&enc).''}    " Encoding.
set statusline+=%2*\ \ %<%m%r%h%w\                      " Status for buffer.
set statusline+=%=                                      " Right side.
set statusline+=%1*\ %02l:%02v\ \                       " Line = nr:ch.
set statusline+=%0*\ \ %3p%%\ \ \                       " Percentage of file.


" Show syntax highlighting groups for word under cursor -----------------------
" http://vimcasts.org/episodes/creating-colorschemes-for-vim/
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc


" -----------------------------------------------------------------------------
" PLUGINS ---------------------------------------------------------------------
" -----------------------------------------------------------------------------

" apt-vim ---------------------------------------------------------------------
" execute pathogen#infect()
" call pathogen#helptags()


" NERDTree --------------------------------------------------------------------
"Map [Ctrl]+[N] to start NERDTree.
"map <C-n> :NERDTreeToggle<CR>

" Automatically close Vim when NerdTree is the last Window.
"autocmd bufenter * if (winnr("$") == 1 &&
"      \ exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Automatically start NERDTree if no file is specified.
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
