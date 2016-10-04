" pathogen
execute pathogen#infect('bundle/{}', '~/src/vimPlugins/{}')

"" Autocompletion
"set completeopt=longest,menuone

" NERDTree

" YouCompleteMe
let g:ycm_show_diagnostics_ui=1
let g:ycm_register_as_syntastic_checker=1

let g:ycm_error_symbol='!E'
let g:ycm_warning_symbol='!W'

let g:ycm_always_populate_location_list=1

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_log_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

let g:syntastic_enable_signs=1

 let g:syntastic_c_checkers=['make']
" let g:syntastic_shell="/bin/dash"

let g:syntastic_python_checkers=['']

"================================================
" My things

" Colour scheme
syntax enable
if has('gui_running')
  set background =dark
  colorscheme solarized
endif 

" GUI
if has('gui_running')
  set guioptions -=T  " remove toolbar
  set guioptions -=L  " remove Left scrollbar
  set guioptions -=r  " remove right scrollbar
  set guifont =DejaVu\ Sans\ Mono\ 8
endif

au BufRead *.tex setlocal tw=100
au BufRead *.rst setlocal tw=100
au BufRead *.py setlocal tw=100

" Tab-widths
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab

au BufRead *.tex setlocal smartindent

" Line highlighting
set cursorline

set number  " Display linenumbers

set mouse=a " Enable mouse

set smartindent " Maintains indentation level

set hlsearch  " Highlight search terms

set wrap lbr  " Wraps lines without breaking words

" Spell checking
set spelllang=en_gb
set spellfile=~/.vim/spellfile.add
highlight clear SpellBad
highlight clear SpellCap
highlight clear SpellLocal
highlight SpellBad cterm=underline ctermfg=red
highlight SpellCap cterm=underline ctermfg=green
highlight SpellLocal cterm=underline ctermfg=blue
au BufRead *.txt setlocal spell
au BufRead *.tex setlocal spell
au BufRead *.rst setlocal spell

" Keyboard mapping
inoremap <C-Space> <C-n>
inoremap <C-f> <C-\><C-O>:%!astyle<CR>
nnoremap <C-f> :%!astyle<CR>
map <C-\> :NERDTreeToggle<CR>
map <C-b> :! clear && ./.buildScript.sh<CR>
map <F3> <C-w><C-]><C-w>T
map <C-Left> gT
map <C-Right> gt
map <C-n> :tabnew<CR>
