" This file uses utf8 encoding
set encoding=utf8
set guifont=Fixedsys:h10
set langmap=ΑA,ΒB,ΨC,ΔD,ΕE,ΦF,ΓG,ΗH,ΙI,ΞJ,ΚK,ΛL,ΜM,ΝN,ΟO,ΠP,QQ,ΡR,ΣS,ΤT,ΘU,ΩV,WW,ΧX,ΥY,ΖZ,αa,βb,ψc,δd,εe,φf,γg,ηh,ιi,ξj,κk,λl,μm,νn,οo,πp,ρr,σs,τt,θu,ωv,ςw,χx,υy,ζz
set nocompatible
set selectmode=
set incsearch
set backspace=2
"source $VIMRUNTIME/mswin.vim
behave mswin

set noswf
set hlsearch

set nostartofline " to make commands like zz, H go to the currenct column instead of the start of the line

"comments xml/html line:
noremap cy I<!--<Esc>A--><Esc>^j
"uncomments xml/html line:
noremap cn ^4x$xxx^j

"firefox-like shortcuts that don't conflict
"with vim defaults!
noremap <Space> <C-f>
noremap <S-Space> <C-b>

noremap cc ^c$

"Go to the other window when in a two-window
"layout
noremap <F2> <C-w>w

set timeoutlen=500

set ignorecase
set smartcase

set guioptions-=T

"set diffexpr=MyDiff()
"function MyDiff()
"  let opt = '-a --binary '
"  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
"  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
"  let arg1 = v:fname_in
"  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
"  let arg2 = v:fname_new
"  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
"  let arg3 = v:fname_out
"  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
"  let eq = ''
"  if $VIMRUNTIME =~ ' '
"    if &sh =~ '\<cmd'
"      let cmd = '""' . $VIMRUNTIME . '\diff"'
"      let eq = '"'
"    else
"      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
"    endif
"  else
"    let cmd = $VIMRUNTIME . '\diff'
"  endif
"  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
"endfunction

syntax enable
colorscheme gtz
set smartindent
set clipboard=unnamed
set gdefault
au GUIEnter * simalt ~x
au BufRead,BufNewFile *cover set filetype=cover

set tabstop=4
set shiftwidth=4

set expandtab

inoremap <F4> <ESC>:nohl<CR>a
nnoremap <F4> :nohl<CR>
noremap <F7> ggVGy

"execute pathogen#infect()
"let g:jedi#popup_on_dot = 0

nnoremap <F3> yiw:vimgrep /\<<C-R>"\>/ **/*py

nnoremap <F8> ^f;F'"tyi':<C-F>iif filereadable("<C-R>#<Esc>F/lD"tpa.js") \| e <Esc>F"yi"$pa \| else \| e <Esc>pF.C/index.js \| endif<Return>
