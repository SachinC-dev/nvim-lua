augroup exe_code
  autocmd!
  " For python
  autocmd FileType python nnoremap <buffer> <C-b> :TermExec cmd="python %"<CR>
augroup END
