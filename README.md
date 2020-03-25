Registers the clangd lsp to vim-lsp, to be used with vim-lsp.
Requires `clangd` installed.

Example usage:
```vim
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
...
Plug 'piec/vim-lsp-clangd'
```

Ignore the warning about `clangd` not found:
```vim
let g:lsp_clangd_ignore_warning = 1
```

You may use the `CLANGD_FLAGS` environment variable in order to pass arguments to clangd, for example:
```sh
export CLANGD_FLAGS="--compile-commands-dir=$PWD/build"
```
