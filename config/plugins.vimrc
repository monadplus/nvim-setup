" airline: status bar at the bottom
let g:airline_powerline_fonts=0

" if you want to disable auto detect, comment out those two lines (COC)
"let g:airline#extensions#disable_rtp_load = 1
"let g:airline_extensions = ['branch', 'hunks', 'coc']

let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'

" Nerd commenter
filetype plugin on

" Nerdtree git plugin symbols
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "ᵐ",
    \ "Staged"    : "ˢ",
    \ "Untracked" : "ᵘ",
    \ "Renamed"   : "ʳ",
    \ "Unmerged"  : "ᶴ",
    \ "Deleted"   : "ˣ",
    \ "Dirty"     : "˜",
    \ "Clean"     : "ᵅ",
    \ "Unknown"   : "?"
    \ }

" Open Nerdtree when nvim starts with no file opened
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Close Nerdtree when it is  the last window opened
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NerdTree config
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeShowHidden = 1

let g:NERDTreeShowGitStatus = 1

" Rainbow brackets
let g:rainbow_active = 1

" vim-scala
au BufRead,BufNewFile *.sbt set filetype=scala

" ------------------- COC config -----------------------

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Some server have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" Show signature help
autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" No preview window on autocompletion (vim-lsc)
"set completeopt-=preview

" Close preview window on autocompletion (metals / vim-lsc)
"autocmd CompleteDone * silent! pclose

" Diagnostics highlighting
"hi link ALEError Error
"hi Warning term=underline cterm=underline ctermfg=Yellow gui=undercurl guisp=Gold
"hi link ALEWarning Warning
"hi link ALEInfo SpellCap

" haskell-vim
let g:haskell_indent_if = 2               " Align 'then' two spaces after 'if'
let g:haskell_indent_before_where = 2     " Indent 'where' block two spaces under previous body
let g:haskell_indent_case_alternative = 1 " Allow a second case indent style (see haskell-vim README)
let g:haskell_indent_let_no_in = 0        " Only next under 'let' if there's an equals sign
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

" ----- hindent & stylish-haskell -----

let g:stylishask_config_file = "~/.stylish-haskell.yaml"
let g:stylishask_on_save = 0
let g:hindent_on_save    = 0

" ----- w0rp/ale -----
"  I prefer ghcid over ghc-mod for large projects
"  ghcid integration: https://github.com/aiya000/vim-ghcid-quickfix
"let g:ale_linters = {'haskell': ['ghc-mod', 'hlint']}

" -- Deactivated
"let g:ale_linters = {'haskell': ['hlint']}

" Create/Update tags on save file
augroup tags
au BufWritePost *.hs            silent !fast-tags -R . --nomerge
au BufWritePost *.hsc           silent !fast-tags -R . --nomerge
augroup END

" Folding is disabled (https://github.com/plasticboy/vim-markdown#disable-folding)
let g:vim_markdown_folding_disabled = 1

