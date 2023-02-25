if !exists('g:ale_enabled') || exists('g:disable_rust_ale_pretty') || !has('conceal') || &enc != 'utf-8'
    finish
endif

if exists('b:current_syntax')
    finish
endif

runtime! after/syntax/rust.vim

" pointErr
syn match pointErr 'error\[.*\]:'he=e-1
hi def link pointErr        Error

" help:
syn keyword help    help
hi def link help    Todo

" note:
syn match note    '=\? \?note'
hi def link note    Debug

" ^^^^
syn match pointer '\^\+'
hi def link pointer      Error
