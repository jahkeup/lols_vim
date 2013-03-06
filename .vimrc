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
:nmap \m :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>
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

