if !exists("g:zenburn_high_Contrast")
  hi ColorColumn ctermbg=236
  hi CursorLine ctermbg=236
endif

if exists("g:zenburn_alternate_Visual")
  hi Visual guifg=NONE guibg=#262626 ctermbg=235 gui=none
  hi VisualNOS guifg=NONE guibg=#262626 ctermbg=235 gui=none
else
  hi Visual guifg=NONE guibg=#262626 ctermbg=235 gui=none
  hi VisualNOS guifg=NONE guibg=#262626 ctermbg=235 gui=none
endif

hi MatchParen guifg=#000000 guibg=#af5f5f ctermfg=0 ctermbg=131 gui=bold

hi IndentGuidesOdd guibg=#3a3a3a ctermbg=237
hi IndentGuidesEven guibg=#444444 ctermbg=238
