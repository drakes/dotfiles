set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

" plugins {
call pathogen#infect()
" }

" different settings for specific file types {
	filetype plugin indent on
" }

" Folding {
	set foldmethod=indent
" }

" Line Numbers {
	set nu!
"}

" Tab Stop {
	set ts=2
" }

" Shiftwidth {
	set sw=2
" }

" Copy Indent {
	set ci
" }

" Soft wrapping {
	set wrap
	set linebreak
	set nolist
	set textwidth=0
	set wrapmargin=0
" }

" Font {
	set gfn=DejaVu\ Sans\ Mono\ 11
" }

" Case-sensitive search only when pattern has uppercase {
	set ic
	set scs
" }

" Always show [window] tabs {
	set stal=2
" }

" spellcheck {
	set spell
" }
