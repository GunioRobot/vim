# Information

This is my personal Vim configuration that I use for all my text editing
(LaTeX, markdown, coding, etc...). My configuration is mostly based off of
scrooloose/vimfiles and astrails/dotvim from GitHub, with modifications to
match my personal preferences.

# Installing

1. Ensure you have `git` installed

2. Clone vim repository
`$ git clone git://github.com/kevinjalbert/vim.git ~/.vim`

3. Make symlink to `.vimrc`
`$ ln -s ~/.vim/vimrc .vimrc`

4. Install vim plugins using Vundle
  * Launch `vim` and run `:BundleInstall`

5. Enjoy!

# Plugins

* FuzzyFinder
* Fugitive
* Endwise
* Repeat
* Taglist
* DelimitMate
* Syntastic
* NERDtree
* NERDCommenter
* MiniBufExpl
* snipMATE
* CSapprox
* Markdown

# Mappings and Bindings

* Leader is `,` and local leader is `\`

* `Q` wraps lines to 80 characters

* `,/` will toggle line comments

* `Y` will yank till the end of the line

* `Ctrl-e` will switch between the last buffer

* `Ctrl-l` will clear any highlighting (for example, searches)

* `f2` will toggle NERD Tree to open/close in a left vertical split

* `f3` will toggle Taglist to open/close in a right vertical split

* `f4` will jump to the MiniBufExplorer buffer

* `f5` will auto-indent the current buffer

* `f6` will toggle spellcheck (only within insert mode)

* `f7` will toggle code folding based on the indention

* `f12` will toggle the line numbering system (relative or absolute)

* `Ctrl-{h,j,k,l}` will move between windows

* `,f` will open FuzzyFinder to look for files from the current buffers directory

* `,t` will open FuzzyFinder to look for tags within the current buffer

* `,r` will open FuzzyFinder to look for tags from all the open buffers

* `,b` will open FuzzyFinder to look for buffers from the set of open buffers


