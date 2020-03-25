" based on https://github.com/prabirshrestha/vim-lsp/wiki/Servers-Clangd
if executable('clangd')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'clangd',
        \ 'cmd': {server_info->['clangd', '-background-index']},
        \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
        \ })
else
    let ex = exists("g:lsp_clangd_ignore_warning")
    if !ex || (ex && !g:lsp_clangd_ignore_warning)
        echo "Cannot find clangd"
        echo "set 'g:lsp_clangd_ignore_warning = 1' if you do not want to see this warning"
    endif
endif
