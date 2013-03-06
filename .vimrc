call pathogen#infect()
" let g:Powerline_symbols = 'fancy'
set number
syntax on
" from http://statico.github.com/vim.html
" Toggle Line Numbers and Paste mode.
:nmap \l :setlocal number!<CR>
:nmap \o :set paste!<CR>
" Toggle graphical line navigation vs. actual line...
:nmap j gj
:nmap k gk
" Search settings
:set incsearch
:set ignorecase
:set smartcase
:set hlsearch
:nmap \q :nohlsearch<CR

" File Navigation
" 
" return to last file
:nmap <C-e> :e#<CR>
" Buffer nav
:nmap <C-n> :bnext<CR>
:nmap <C-p> :bprev<CR>
" CtrlP buffer nav
:nmap ; :CtrlPBuffer<CR>

" Some CtrlP Settings...
"
" also maps '\t' to open CtrlP at the top of the screen
:let g:ctrlp_map = '<Leader>t'
:let g:ctrlp_match_window_bottom = 0
:let g:ctrlp_match_window_reversed = 0
:let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
:let g:ctrlp_working_path_mode = 0
:let g:ctrlp_dotfiles = 0
:let g:ctrlp_switch_buffer = 0

" NERDTree Quick access
:nmap \e :NERDTreeToggle<CR>

" Quick tab settings
set expandtab tabstop=2 shiftwidth=2 softtabstop=2
:nmap \t :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>
:nmap \T :set expandtab tabstop=8 shiftwidth=8 softtabstop=4<CR>
:nmap \M :set noexpandtab tabstop=8 softtabstop=4 shiftwidth=4<CR>
" :nmap \m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>
:nmap \w :setlocal wrap!<CR>:setlocal wrap?<CR>

" Rails Access
:nmap \v :Rview
:nmap \c :Rcontroller

" Split Control
:nmap \` :vnew<CR>
:nmap \[ <C-w>h
:nmap \] <C-w>l
:nmap \} 20<C-w>>
:nmap \{ 20<C-w><
:nmap \| <C-w>=

" Personal Aliases

:nmap cW bcw


" http://stackoverflow.com/questions/2586984/how-can-i-swap-positions-of-two-open-files-in-splits-in-vim
" use \mw to mark swapping and \pw to swap
function! MarkWindowSwap()
    let g:markedWinNum = winnr()
endfunction

function! DoWindowSwap()
    "Mark destination
    let curNum = winnr()
    let curBuf = bufnr( "%" )
    exe g:markedWinNum . "wincmd w"
    "Switch to source and shuffle dest->source
    let markedBuf = bufnr( "%" )
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' curBuf
    "Switch to dest and shuffle source->dest
    exe curNum . "wincmd w"
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' markedBuf 
endfunction

nmap <silent> <leader>mw :call MarkWindowSwap()<CR>
nmap <silent> <leader>pw :call DoWindowSwap()<CR>

" Store Swap and Backups eleswhere!
set directory=~/.vim/swap
set backupdir=~/.vim/backup


" Code Completion
autocmd FileType ruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby let g:rubycomplete_buffer_loading=1
autocmd FileType ruby let g:rubycomplete_classes_in_global=1

