let mapleader = "\<Space>"
set expandtab
set shiftwidth=1
set softtabstop=2
set autowrite 
let g:ackprg = 'ag --vimgrep'
set runtimepath^=~/.vim/bundle/ctrlp.vim
autocmd CursorHold,CursorHoldI * update
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
  Plugin 'unite.vim'
  Plugin 'haya14busa/incsearch.vim'
call vundle#end()

if executable('ag')
    " Note we extract the column as well as the file and line number
    set grepprg=ag\ --nogroup\ --nocolor\ --column
    set grepformat=%f:%l:%c%m
endif
" Make it obvious where 80 characters is
nnoremap <Leader>r :RunInInteractiveShell<space>
set laststatus=2
nnoremap <Leader>f :Unite file_rec/async<CR>
nnoremap <Leader>f <Plug>(unite_redraw)
set mouse=a
if has("mouse_sgr")
    set ttymouse=sgr
else
    set ttymouse=xterm2
end

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
