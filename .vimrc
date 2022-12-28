set nocompatible

" Test Platform {
function! MySys()
	if has("win32")
		return "windows"
	else
		return "linux"
	endif
endfunction
" }

if MySys() == "windows"

	source $VIMRUNTIME/vimrc_example.vim
	source $VIMRUNTIME/mswin.vim
	behave mswin

" swap and backup files {
	set backup
	set backupdir=~/AppData/Local/Temp//
	set undodir=~/AppData/Local/Temp//
	set dir=~/AppData/Local/Temp//
" }

elseif MySys() == "linux"

" swap and backup files {
	set backup
	set backupdir=~/tmp//
	set undodir=~/tmp//
	set dir=~/tmp//
" }

endif

" different settings for specific file types {
	filetype plugin indent on
" }

" for all text files set 'textwidth' to 0, overriding vimrc_exmaple.vim {
	autocmd FileType text setlocal textwidth=0
" }

" map F1 to Escape (because it's too easy to hit accidentally) {
	map <F1> <Esc>
	imap <F1> <Esc>
" }

" Folding {
	set foldmethod=indent
" }

" Line Numbers {
	set nu
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

" join lines with only a single spac instead of two {
 set nojoinspaces
" }

" Font {
	set gfn=DejaVu\ Sans\ Mono\ 11,Lucida\ Console:h11
" }

" Case-sensitive search only when pattern has uppercase {
	set ic
	set scs
" }

" Always show [window] tabs {
	set stal=2
" }

" Hide menu and tool bars {
	set guioptions-=m
	set guioptions-=T
" }

if has("gui_running")
	" https://vim.fandom.com/wiki/Maximize_or_set_initial_window_size
	set lines=64 columns=192
endif

" spellcheck {
	set spell
" }

" default encoding {
	set encoding=utf-8
" }

" insert date - with a new line {
	nmap <F5> O<C-R>=strftime('%Y%m%d %a')<Esc><Esc>
" }
