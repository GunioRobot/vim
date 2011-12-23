" ----------------------------------------------------------------------------
" My personal Vim configuration using Vundle for plugins
"
" Bits and pieces of this configuration are adapted from the two amazing
" vim configurations of scrooloose/vimfiles and astrails/dotvim from their
" GitHub repositories.
"
" Author: Kevin Jalbert <kevin.j.jalbert@gmail.com>
" ----------------------------------------------------------------------------

" Use Vim settings instead of vi
set nocompatible

" Map new leader (,) and localleader (\)
let mapleader = ","
let maplocalleader = "\\"

" Set the color scheme
colorscheme zenburn


" --------------------------
" Bundles and their settings
" --------------------------


" VUNDLE
" Make sure we are using Vundle
" ------
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" FUZZYFINDER
" Allows quick fuzzy searching within Vim
" -----------
Bundle 'vim-scripts/L9'
Bundle 'vim-scripts/FuzzyFinder'

" SCRATCH
" Allows a quick scratch buffer within Vim
" -----------
Bundle 'duff/vim-scratch'

" FUGITIVE
" A Git wrapper to allow for the usage of Git commands
" --------
Bundle 'tpope/vim-fugitive'

" ENDWISE
" Adds 'end' where appropriate while coding (ruby's end if/function, etc...)
"------------
Bundle 'tpope/vim-endwise'

" REPEAT
" Allows the repeat of a plugin map (using '.')
" ----------
Bundle 'tpope/vim-repeat'

" TAGLIST
" Displays an overview of the code's structure
" -------
Bundle 'vim-scripts/taglist.vim'
let Tlist_Compact_Format = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Exit_OnlyWindow = 0
let Tlist_WinWidth = 35
let tlist_php_settings = 'php;c:class;f:Functions'
let Tlist_Use_Right_Window=1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Display_Tag_Scope = 1
let Tlist_Process_File_Always = 1
let Tlist_Show_One_File = 1

" DELIMITMATE
" Provides automatic closing of quotes, parenthesis, brackets, etc...
" -----------
Bundle 'Raimondi/delimitMate'
let g:delimitMate_expand_space = 1
let g:delimitMate_expand_cr = 1

" SYNTASTIC
" Provides syntax checking for certain file types
" ---------
Bundle 'scrooloose/syntastic'
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2

" NERDTREE
" Provides a directory tree explorer
" --------
Bundle 'scrooloose/nerdtree'
let g:NERDTreeMouseMode = 2
let g:NERDTreeWinSize = 40

" NERDCOMMENTER
" Provides many commenting operations and styles
" --------
Bundle 'scrooloose/nerdcommenter'

" MINIBUFEXPL
" Provides an elegant buffer explorer
" -----------
Bundle 'fholgado/minibufexpl.vim'
let g:miniBufExplorerMoreThanOne = 2
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1

" SNIPMATE
" Provides a set of snippets that can be used quickly
" --------
Bundle 'msanders/snipmate.vim'
let g:snips_author = "Kevin Jablbert"

" CSAPPROX
" Makes color schemes work 'just work' in terminal Vim
" --------
Bundle 'godlygeek/csapprox'
if !has("gui")
  let g:CSApprox_loaded = 1
endif

" MARKDOWN
" Provides syntax formating for markdown files
" --------
Bundle 'plasticboy/vim-markdown'


" ----------------
" General settings
" ----------------


" Increase tty redraw speed
set ttyfast
set lazyredraw

" Turn off null characters
imap <Nul> <Space>
imap <Nul> <Nop>
vmap <Nul> <Nop>
cmap <Nul> <Nop>
nmap <Nul> <Nop>

" Automatically detect file types
filetype plugin indent on

" Enable backspacing over everything in insert mode
set backspace=indent,eol,start

" Storage for :cmdline history
set history=1000

" Shows incomplete commands in statusline
set showcmd

" Shows current mode in statusline
set showmode

" Undo settings
set undodir=~/.vim/undofiles
set undofile
set colorcolumn=+1 "mark the ideal max text width

" Search settings
set incsearch
set hlsearch

" Line settings
set number
set rnu

" Show whitespace
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

" Do not wrap lines (if so only at linebreaks)
set wrap
set linebreak

" Indent settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

" Folding settings
set foldmethod=indent
set foldnestmax=3
set nofoldenable

" Make command line tab complete with cycling"
set wildmode=full
set wildmenu
set wildignore=*.o,*.obj,*~

" Vertical and horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

" Do not auto-comment when pushing o/O
set formatoptions-=o 

" Hide buffers when not displayed
set hidden

" Enable syntax highlighting
syntax on

" Enable mouse within terminal
set mouse=a
set ttymouse=xterm2

" Terminal has 256 colors
set t_Co=256

" Enable spell check when writing commit logs
autocmd filetype svn,*commit* setlocal spell


" ---------------------
" Mappings and bindings
" ---------------------


" Quick line comment toggle using NERDCommenter
nmap <leader>/ :call NERDComment(0, "invert")<cr>
vmap <leader>/ :call NERDComment(0, "invert")<cr>

" Wrap line(s) to textwidth
noremap Q gq

" Make Y consistent with C and D (Yank till end of line)
nnoremap Y y$

" Switch between last buffers
nmap <C-E> :b#<CR>

" Clear the highlighting and redraw screen
nnoremap <C-L> :nohls<CR><C-L>
inoremap <C-L> <C-O>:nohls<CR>

" Toggle NERD Tree
nnoremap <f2> :NERDTreeToggle<cr>

" Toggle TagList
nnoremap <f3> :TlistToggle<cr>

" Toggle MiniBufExplorer
nmap <f4> :MiniBufExpl<cr>

" Auto-indent file
map <f5> mzgg=G'z<CR>

" Toggle spellcheck (only within insert mode)
imap <f6> <C-o>:setlocal spell! spelllang=en_us<CR>

" Toggle code folding based on indention
inoremap <f7> <C-O>za
nnoremap <f7> za
onoremap <f7> <C-C>za
vnoremap <f7> zf

" Toggle error window
nmap <silent> <f8> :ErrorsToggle<cr>

" Toggle scratch pad
nnoremap <silent> <leader><tab> :ScratchToggle<cr>

" Toggle numbering mode
function! g:ToggleNuMode()
  if(&rnu == 1)
    set nu
  else
    set rnu
  endif
endfunc
nnoremap <f12> :call g:ToggleNuMode()<cr>

" Better way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Quickfinding with FuzzyFinder
nmap ,f :FufFileWithCurrentBufferDir<CR>
nmap ,t :FufBufferTag<CR>
nmap ,r :FufBufferTagAll<CR>
nmap ,b :FufBuffer<CR>


" -------------------
" Statusline settings
" -------------------


" Display the tail of the filename
set statusline=%f

" Display a warning if file format is not unix
set statusline+=%#warningmsg#
set statusline+=%{&ff!='unix'?'['.&ff.']':''}
set statusline+=%*

" Display a warning if file encoding is not UTF-8
set statusline+=%#warningmsg#
set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
set statusline+=%*

" Display help file flag
set statusline+=%h

" Display read-only flag
set statusline+=%r

" Display modified flag
set statusline+=%m

" Display Git information
set statusline+=%{fugitive#statusline()}

" Display warning if &et is wrong or we have mix-indentention
set statusline+=%#error#
set statusline+=%{StatuslineTabWarning()}
set statusline+=%*

" Display warning if we have trailing whitespaces
set statusline+=%{StatuslineTrailingSpaceWarning()}

" Display information about the long lines present in buffer
set statusline+=%{StatuslineLongLineWarning()}

" Display warning about syntax errors
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Display warning if &paste is set
set statusline+=%#error#
set statusline+=%{&paste?'[paste]':''}
set statusline+=%*

" Display current highlight and current position information
set statusline+=%=      "left/right separator
set statusline+=%{StatuslineCurrentHighlight()}\ \ "current highlight
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set laststatus=2


" -----------------------------------------
" Misc functions (from scrooloose/vimfiles)
" -----------------------------------------


"recalculate the trailing whitespace warning when idle, and after saving
autocmd cursorhold,bufwritepost * unlet! b:statusline_trailing_space_warning

"return '[\s]' if trailing white space is detected
"return '' otherwise
function! StatuslineTrailingSpaceWarning()
    if !exists("b:statusline_trailing_space_warning")

        if !&modifiable
            let b:statusline_trailing_space_warning = ''
            return b:statusline_trailing_space_warning
        endif

        if search('\s\+$', 'nw') != 0
            let b:statusline_trailing_space_warning = '[\s]'
        else
            let b:statusline_trailing_space_warning = ''
        endif
    endif
    return b:statusline_trailing_space_warning
endfunction

"return the syntax highlight group under the cursor ''
function! StatuslineCurrentHighlight()
    let name = synIDattr(synID(line('.'),col('.'),1),'name')
    if name == ''
        return ''
    else
        return '[' . name . ']'
    endif
endfunction

"recalculate the tab warning flag when idle and after writing
autocmd cursorhold,bufwritepost * unlet! b:statusline_tab_warning

"return '[&et]' if &et is set wrong
"return '[mix-indent]' if spaces and tabs are used to indent
"return an empty string if everything is fine
function! StatuslineTabWarning()
    if !exists("b:statusline_tab_warning")
        let b:statusline_tab_warning = ''

        if !&modifiable
            return b:statusline_tab_warning
        endif

        let tabs = search('^\t', 'nw') != 0

        "find spaces that arent used as alignment in the first indent column
        let spaces = search('^ \{' . &ts . ',}[^\t]', 'nw') != 0

        if tabs && spaces
            let b:statusline_tab_warning =  '[mix-indent]'
        elseif (spaces && !&et) || (tabs && &et)
            let b:statusline_tab_warning = '[&et]'
        endif
    endif
    return b:statusline_tab_warning
endfunction

"recalculate the long line warning when idle and after saving
autocmd cursorhold,bufwritepost * unlet! b:statusline_long_line_warning

"return a warning for "long lines" where "long" is either &textwidth or 80 (if
"no &textwidth is set)
"
"return '' if no long lines
"return '[#x,my,$z] if long lines are found, were x is the number of long
"lines, y is the median length of the long lines and z is the length of the
"longest line
function! StatuslineLongLineWarning()
    if !exists("b:statusline_long_line_warning")

        if !&modifiable
            let b:statusline_long_line_warning = ''
            return b:statusline_long_line_warning
        endif

        let long_line_lens = s:LongLines()

        if len(long_line_lens) > 0
            let b:statusline_long_line_warning = "[" .
                        \ '#' . len(long_line_lens) . "," .
                        \ 'm' . s:Median(long_line_lens) . "," .
                        \ '$' . max(long_line_lens) . "]"
        else
            let b:statusline_long_line_warning = ""
        endif
    endif
    return b:statusline_long_line_warning
endfunction

"return a list containing the lengths of the long lines in this buffer
function! s:LongLines()
    let threshold = (&tw ? &tw : 80)
    let spaces = repeat(" ", &ts)

    let long_line_lens = []

    let i = 1
    while i <= line("$")
        let len = strlen(substitute(getline(i), '\t', spaces, 'g'))
        if len > threshold
            call add(long_line_lens, len)
        endif
        let i += 1
    endwhile

    return long_line_lens
endfunction

"find the median of the given array of numbers
function! s:Median(nums)
    let nums = sort(a:nums)
    let l = len(nums)

    if l % 2 == 1
        let i = (l-1) / 2
        return nums[i]
    else
        return (nums[l/2] + nums[(l/2)-1]) / 2
    endif
endfunction

"visual search mappings
function! s:VSetSearch()
    let temp = @@
    norm! gvy
    let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
    let @@ = temp
endfunction
vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR>
vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR>

"jump to last cursor position when opening a file
"dont do it when writing a commit log entry
autocmd BufReadPost * call SetCursorPosition()
function! SetCursorPosition()
    if &filetype !~ 'svn\|commit\c'
        if line("'\"") > 0 && line("'\"") <= line("$")
            exe "normal! g`\""
            normal! zz
        endif
    end
endfunction

"http://vimcasts.org/episodes/fugitive-vim-browsing-the-git-object-database/
"hacks from above (the url, not jesus) to delete fugitive buffers when we
"leave them - otherwise the buffer list gets poluted
"
"add a mapping on .. to view parent tree
autocmd BufReadPost fugitive://* set bufhidden=delete
autocmd BufReadPost fugitive://*
  \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
  \   nnoremap <buffer> .. :edit %:h<CR> |
  \ endif

" From Steve Losh (sjl/dotfiles)
command! ErrorsToggle call ErrorsToggle()
function! ErrorsToggle() " {{{
  if exists("w:is_error_window")
    unlet w:is_error_window
    exec "q"
  else
    exec "Errors"
    lopen
    let w:is_error_window = 1
  endif
endfunction " }}}

" From Steve Losh (sjl/dotfiles)
command! ScratchToggle call ScratchToggle()
function! ScratchToggle() " {{{
  if exists("w:is_scratch_window")
    unlet w:is_scratch_window
    exec "q"
  else
    exec "normal! :Sscratch\<cr>\<C-W>J:resize 13\<cr>"
    let w:is_scratch_window = 1
  endif
endfunction " }}}
