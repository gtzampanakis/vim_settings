" Vim syntax file
" Language:	python coverage
" Maintainer: Dan Buch <dbuch@ag.com>

if has("syntax")
  highlight CoverCovered ctermfg=Green guifg=Green
  highlight CoverNotCovered ctermbg=LightRed ctermfg=White guibg=LightRed guifg=White
endif

syn match CoverCovered "^>"
syn match CoverNotCovered "^!.*"

let b:current_syntax = "cover"
