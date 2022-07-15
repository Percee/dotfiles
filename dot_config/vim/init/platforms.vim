" yank to clipboard
if g:os == "Windows"
    set clipboard^=unnamed,unnamedplus
elseif has("clipboard")
    set clipboard=unnamed " copy to the system clipboard

    if has("unnamedplus") " X11 support
        set clipboard+=unnamedplus
    endif
endif

if g:os == "WSL"
    " WSL yank support
    let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
    if executable(s:clip)
        augroup WSLYank
            autocmd!
            autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
        augroup END
    endif
endif
