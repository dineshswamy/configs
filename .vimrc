let mapleader = "\<Space>"
set expandtab
set shiftwidth=1
set softtabstop=2
let g:ackprg = 'ag --vimgrep'
set runtimepath^=~/.vim/bundle/ctrlp.vim
autocmd CursorHold,CursorHoldI * update
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
  Plugin 'unite.vim'
call vundle#end()

if executable('ag')
    " Note we extract the column as well as the file and line number
    set grepprg=ag\ --nogroup\ --nocolor\ --column
    set grepformat=%f:%l:%c%m
endif
" Make it obvious where 80 characters is
set number
set numberwidth=3
nnoremap <Leader>r :RunInInteractiveShell<space>
set laststatus=2
nnoremap <Leader>f :Unite -start-insert file_rec<CR>


