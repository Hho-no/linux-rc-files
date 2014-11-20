set wrap
set tabstop=4
set autoindent
set shiftwidth=4
set wildchar=<tab>
let loaded_matchparen=1
set numberwidth=2
set number
set foldmethod=marker
set list
set listchars=tab:\|\ 
map <F2> :WMToggle<CR>
let Tlist_Inc_Winwidth = 0
map <F3> :Tlist<CR>
map <F12> :make<CR>

"let perl_fold=1
augroup filetypedetect
autocmd! BufNewFile,BufRead *.epl,*.phtml setf embperl
augroup END

autocmd BufNewFile,BufRead *.epl,*.phtml colorscheme embperl_yellow

" This is for perldoc.vim
autocmd BufNewFile,BufRead *.p? map <F1> :Perldoc<cword><CR>
autocmd BufNewFile,BufRead *.p? setf perl
autocmd BufNewFile,BufRead *.p? let g:perldoc_program='/usr/bin/perldoc'
autocmd BufNewFile,BufRead *.p? source /home/w7h/.vim/ftplugin/perl_doc.vim

autocmd BufNewFile,BufRead *.p? compiler perl
