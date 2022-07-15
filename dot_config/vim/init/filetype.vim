if exists("did_load_filetypes")
    finish
endif
augroup filetypedetect
    au! BufNewFile,BufRead vimrc.tmpl,*.vim.tmpl set ft=vim
augroup END
