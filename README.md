# Information

This is my personal Vim configuration that I use for all my text editing
(LaTeX, markdown, coding, etc...). My configuration is mostly based off of
scrooloose/vimfiles and astrails/dotvim from GitHub, with modifications to
match my personal preferences.

# Installing

1. Ensure you have `git` installed

2. Clone vim repository
`$ git clone git://github.com/kevinjalbert/vim.git ~/.vim`

3. Setup Vundle
` $ git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle `

4. Make symlink to `.vimrc`
`$ ln -s ~/.vim/vimrc .vimrc`

5. Install vim plugins using Vundle
  * Launch `vim` and run `:BundleInstall`

6. Enjoy!

# Plugins

* Vim-indent-guides
* AfterColors
* Gundo.vim
* FuzzyFinder
* Fugitive
* vim-surround
* Vim-scratch
* Endwise
* Repeat
* ANSIesc
* Tagbar
* Vim-easymotion
* DelimitMate
* Syntastic
* NERDtree
* NERDCommenter
* Matchit
* Indexedsearch
* Yankring
* snipMATE
* CSapprox
* Markdown
* Supetab

# Mappings and Bindings

* Leader is `,` and local leader is `\`

* `Q` wraps lines to 80 characters

* `,/` will toggle line comments

* `Y` will yank till the end of the line

* `,l` will switch between the last buffer

* `,,` will trigger easymotion (follow ,, with a motion key)

* `,h` will clear any highlighting (for example, searches)

* `f2` will toggle NERD Tree to open/close in a left vertical split

* `f3` will toggle Taglist to open/close in a right vertical split

* `f4` will toggle YankRing

* `f5` will auto-indent the current buffer

* `f6` will toggle spellcheck only within insert mode

* `f7` will toggle code folding based on the indention

* `f8` will toggle error window

* `f9` will toggle Gundo

* `f12` will toggle the line numbering system (relative or absolute)

* `,<tab>` will toggle the scratch pad

* `ss` will make a horizontal split of the current buffer

* `vv` will make a vertical split of the current buffer

* `Ctrl-{h,j,k,l}` will shrink/expand splits

* `H, J, K, L` will move between splits

* `,f` will open FuzzyFinder to look for files from the current buffers directory

* `,t` will open FuzzyFinder to look for tags within the current buffer

* `,r` will open FuzzyFinder to look for tags from all the open buffers

* `,b` will open FuzzyFinder to look for buffers from the set of open buffers
