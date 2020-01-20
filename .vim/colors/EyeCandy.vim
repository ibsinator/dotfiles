" -------------------------------------------------------------------------------------------------
" Name:      EyeCandy
" Author:    @ibsinator
" Created:   July 15 2019
" Modified:  Aug 10 2019
" License:   BSD 3-Clause License
"
" NOTE:
" Only the light colors only work in GUI (MacVim).
" The following terminals are tested:
"   - iTerm2
"   - xterm
"
" INSTALLATION:
" 1. Copy this file to:
"       ~/.vim/colors/EyeCandy.vim
" 2. Add the following line to your .vimrc:
"       colorscheme EyeCandy
"
" MORE INFO:
" For info about the group names used, type the following and scroll down
" to Naming Conventions:
"       :help syntax.txt
" -------------------------------------------------------------------------------------------------


" -------------------------------------------------------------------------------------------------
" THEME SETTINGS ----------------------------------------------------------------------------------
" -------------------------------------------------------------------------------------------------

" Clear color settings
hi clear
if exists("syntax_on")
  syntax reset
endif

" Name of the theme
let g:colors_name="EyeCandy"

" Enable syntax highlighting
syntax on


" -------------------------------------------------------------------------------------------------
" COLORS FOR LIGHT MODE ---------------------------------------------------------------------------
" -------------------------------------------------------------------------------------------------
function! LightMode()
    set bg=light

    " Interface -----------------------------------------------------------------------------------
    hi ColorColumn    ctermfg=NONE ctermbg=7    cterm=NONE   guifg=NONE     guibg=#edeada  gui=NONE
    hi CursorLine     ctermfg=NONE ctermbg=7    cterm=NONE   guifg=NONE     guibg=#edeada  gui=NONE
    hi CursorLineNr   ctermfg=172  ctermbg=7    cterm=NONE   guifg=#e8a23a  guibg=#edeada  gui=NONE
    hi EndOfBuffer    ctermfg=15   ctermbg=NONE cterm=NONE   guifg=#e8a23a  guibg=#edeada  gui=NONE
    hi Folded         ctermfg=15   ctermbg=247  cterm=NONE
    hi FoldColumn     ctermfg=15   ctermbg=247  cterm=NONE
    hi LineNr         ctermfg=8    ctermbg=7    cterm=NONE   guifg=#838383  guibg=#edeada  gui=NONE
    hi Normal         ctermfg=NONE ctermbg=NONE cterm=NONE   guifg=#392d1e  guibg=#faf5e4  gui=NONE
    hi Pmenu          ctermfg=8    ctermbg=7    cterm=NONE   guifg=#838383  guibg=#edeada  gui=NONE
    hi PmenuSel       ctermfg=15   ctermbg=208  cterm=NONE   guifg=#faf5e4  guibg=#ff8700  gui=NONE
    hi StatusLine     ctermfg=15   ctermbg=243  cterm=NONE   guifg=#edeada  guibg=#727272  gui=NONE
    hi VertSplit      ctermfg=247  ctermbg=247  cterm=NONE
    hi Visual         ctermfg=0    ctermbg=228  cterm=NONE   guifg=#392d1e  guibg=#ffce5e  gui=NONE

    " Messages ------------------------------------------------------------------------------------
    hi ErrorMsg       ctermfg=15   ctermbg=88   cterm=NONE   guifg=#faf5e4  guibg=#af0000  gui=NONE
    hi MoreMsg        ctermfg=166  ctermbg=NONE cterm=NONE   guifg=#df8700  guibg=NONE     gui=NONE
    hi Question       ctermfg=166  ctermbg=NONE cterm=NONE   guifg=#df8700  guibg=NONE     gui=NONE
    hi WarningMsg     ctermfg=88   ctermbg=NONE cterm=NONE   guifg=#af0000  guibg=NONE     gui=NONE

    " Search --------------------------------------------------------------------------------------
    hi IncSearch      ctermfg=221  ctermbg=0    cterm=NONE   guifg=#ffdf5f  guibg=#392d1e  gui=NONE
    hi Search         ctermfg=0    ctermbg=221  cterm=NONE   guifg=#392d1e  guibg=#ffdf5f  gui=NONE

    " Highlight -----------------------------------------------------------------------------------
    hi Boolean        ctermfg=24   ctermbg=NONE cterm=NONE   guifg=#005f87  guibg=NONE     gui=NONE
    hi Comment        ctermfg=243  ctermbg=NONE cterm=NONE   guifg=#999999  guibg=NONE     gui=NONE
    hi Conditional    ctermfg=172  ctermbg=NONE cterm=NONE   guifg=#e8a23a  guibg=NONE     gui=NONE
    hi Constant       ctermfg=24   ctermbg=NONE cterm=NONE   guifg=#005f87  guibg=NONE     gui=NONE
    hi Directory      ctermfg=64   ctermbg=NONE cterm=NONE   guifg=#5f8700  guibg=NONE     gui=NONE
    hi Error          ctermfg=160  ctermbg=208  cterm=NONE
    hi Float          ctermfg=210  ctermbg=NONE cterm=NONE
    hi Function       ctermfg=64   ctermbg=NONE cterm=NONE   guifg=#5f8700  guibg=NONE     gui=NONE
    hi Identifier     ctermfg=24   ctermbg=NONE cterm=NONE   guifg=#005f87  guibg=NONE     gui=NONE
    hi MatchParen     ctermfg=NONE ctermbg=208  cterm=NONE   guifg=#e8a23a  guibg=NONE     gui=NONE
    hi NonText        ctermfg=247  ctermbg=NONE cterm=NONE
    hi Number         ctermfg=210  ctermbg=NONE cterm=NONE
    hi Preproc        ctermfg=24   ctermbg=NONE cterm=NONE   guifg=#005f87  guibg=NONE     gui=NONE
    hi Special        ctermfg=24   ctermbg=NONE cterm=NONE   guifg=#005f87  guibg=NONE     gui=NONE
    hi SpecialKey     ctermfg=247  ctermbg=NONE cterm=NONE
    hi Statement      ctermfg=172  ctermbg=NONE cterm=NONE   guifg=#e8a23a  guibg=NONE     gui=NONE
    hi String         ctermfg=124  ctermbg=NONE cterm=NONE
    hi Type           ctermfg=64   ctermbg=NONE cterm=NONE   guifg=#5f8700  guibg=NONE     gui=NONE

    " Highlight whitespace(s) at the end of the line.
    hi WhitespaceEOL  ctermfg=NONE ctermbg=24  cterm=NONE    guifg=NONE     guibg=#005f87  gui=NONE
    match WhitespaceEOL /\s\+$/

    " Language specific highlight -----------------------------------------------------------------
    " Bash
    hi shConditional  ctermfg=179  ctermbg=NONE cterm=NONE
    hi shStatement    ctermfg=130  ctermbg=NONE cterm=NONE

    " Vim
    hi link vimFuncKey Function

    " Python
    hi pythonInclude  ctermfg=24   ctermbg=NONE cterm=NONE   guifg=NONE     guibg=#005f87  gui=NONE
    hi pythonoperator ctermfg=172  ctermbg=NONE cterm=NONE   guifg=#e8a23a  guibg=NONE     gui=NONE
    hi pythonRepeat   ctermfg=172  ctermbg=NONE cterm=NONE   guifg=#e8a23a  guibg=NONE     gui=NONE

    " VimdDff -------------------------------------------------------------------------------------
    hi DiffAdd        ctermfg=0    ctermbg=228  cterm=NONE
    hi DiffChange     ctermfg=0    ctermbg=216  cterm=NONE
    hi DiffDelete     ctermfg=15   ctermbg=67   cterm=NONE
    hi DiffText       ctermfg=0    ctermbg=228  cterm=NONE

    " Colors for modes ---------------------------------------------------------------------------
    hi User1          ctermfg=8    ctermbg=7    cterm=NONE   guifg=#838383  guibg=#faf5e4  gui=NONE
    hi User2          ctermfg=8    ctermbg=7    cterm=NONE   guifg=#838383  guibg=#faf5e4  gui=NONE
    au InsertEnter * call ModeColor(v:insertmode)
    au InsertLeave * hi StatusLine ctermfg=15   ctermbg=243 cterm=NONE   guifg=#edeada  guibg=#727272  gui=NONE
endfunction


" -----------------------------------------------------------------------------
" COLORS FOR DARK MODE --------------------------------------------------------
" -----------------------------------------------------------------------------

function! DarkMode()
    set bg=dark

    " Interface ---------------------------------------------------------------
    hi ColorColumn    ctermfg=NONE ctermbg=8    cterm=NONE
    hi Cursor         ctermfg=8    ctermbg=7    cterm=NONE
    hi CursorLine     ctermfg=NONE ctermbg=8    cterm=NONE
    hi CursorLineNr   ctermfg=228  ctermbg=8    cterm=NONE
    hi EndOfBuffer    ctermfg=8    ctermbg=8    cterm=NONE
    hi Folded         ctermfg=15   ctermbg=242  cterm=NONE
    hi FoldColumn     ctermfg=15   ctermbg=242  cterm=NONE
    hi LineNr         ctermfg=245  ctermbg=8    cterm=NONE
    hi Pmenu          ctermfg=15   ctermbg=8    cterm=NONE
    hi PmenuSel       ctermfg=15   ctermbg=208  cterm=NONE
    hi StatusLine     ctermfg=15   ctermbg=242  cterm=NONE
    hi VertSplit      ctermfg=242  ctermbg=242  cterm=NONE
    hi Visual         ctermfg=0    ctermbg=228  cterm=NONE

    " Messages ----------------------------------------------------------------
    hi ErrorMsg       ctermfg=15   ctermbg=88   cterm=NONE
    hi MoreMsg        ctermfg=208  ctermbg=NONE cterm=NONE
    hi ModeMsg        ctermfg=208  ctermbg=NONE cterm=NONE
    hi Question       ctermfg=208  ctermbg=NONE cterm=NONE
    hi WarningMsg     ctermfg=88   ctermbg=NONE cterm=NONE

    " Search ------------------------------------------------------------------
    hi IncSearch      ctermfg=221  ctermbg=0    cterm=NONE
    hi Search         ctermfg=0    ctermbg=221  cterm=NONE

    " Highlight ---------------------------------------------------------------
    hi Boolean        ctermfg=67   ctermbg=NONE cterm=NONE
    hi Comment        ctermfg=245  ctermbg=NONE cterm=NONE
    hi Conditional    ctermfg=222  ctermbg=NONE cterm=NONE
    hi Constant       ctermfg=67   ctermbg=NONE cterm=NONE
    hi Error          ctermfg=15   ctermbg=88   cterm=NONE
    hi Function       ctermfg=107  ctermbg=NONE cterm=NONE
    hi Identifier     ctermfg=67   ctermbg=NONE cterm=NONE
    hi MatchParen     ctermfg=15   ctermbg=24   cterm=NONE
    hi NonText        ctermfg=8    ctermbg=8    cterm=NONE
    hi Number         ctermfg=210  ctermbg=NONE cterm=NONE
    hi Preproc        ctermfg=67   ctermbg=NONE cterm=NONE
    hi Special        ctermfg=250  ctermbg=NONE cterm=NONE
    hi SpecialKey     ctermfg=67   ctermbg=NONE cterm=NONE
    hi Statement      ctermfg=228  ctermbg=NONE cterm=NONE
    hi String         ctermfg=209  ctermbg=NONE cterm=NONE
    hi Type           ctermfg=107  ctermbg=NONE cterm=NONE
    hi Underlined     ctermfg=NONE ctermbg=NONE cterm=underline

    " Highlight whitespace(s) at the end of the line
    hi WhitespaceEOL  ctermfg=NONE ctermbg=31   cterm=NONE
    match WhitespaceEOL /\s\+$/

    " Language specific highlight ---------------------------------------------
    " Bash
    hi shConditional  ctermfg=179  ctermbg=NONE cterm=NONE
    hi shStatement    ctermfg=229  ctermbg=NONE cterm=NONE

    " Vim
    hi link vimFuncKey Function

    " Python
    hi pythonInclude  ctermfg=67   ctermbg=NONE cterm=NONE
    hi pythonRepeat   ctermfg=222  ctermbg=NONE cterm=NONE

    " VimdDff -----------------------------------------------------------------
    hi DiffAdd        ctermfg=15   ctermbg=107  cterm=NONE
    hi DiffChange     ctermfg=15   ctermbg=209  cterm=NONE
    hi DiffDelete     ctermfg=15   ctermbg=74   cterm=NONE
    hi DiffText       ctermfg=15   ctermbg=107  cterm=NONE

    " Colors for modes --------------------------------------------------------
    hi User1          ctermfg=15   ctermbg=8    cterm=NONE
    hi User2          ctermfg=10   ctermbg=8    cterm=NONE
    au InsertEnter * call ModeColor(v:insertmode)
    au InsertLeave * hi StatusLine ctermfg=15   ctermbg=242 cterm=NONE
endfunction


" -----------------------------------------------------------------------------
" SET COLORS DEPENDING ON COLOR MODE ------------------------------------------
" -----------------------------------------------------------------------------

" Get color mode --------------------------------------------------------------
let g:colormode =
  \ system('cat ' . expand(expand('~/.color_picker.d/color_mode')))[:-2]

" Change color of Status Line for Insert mode ---------------------------------
function! ModeColor(mode)
    if a:mode == "i"
        hi StatusLine ctermfg=15 ctermbg=24 cterm=NONE   guifg=#faf5e4    guibg=#005f87  gui=NONE
    endif
endfunction


" Apply colors ----------------------------------------------------------------
if g:colormode == 'dark'
    call DarkMode()
else
    call LightMode()
endif
