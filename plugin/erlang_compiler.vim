" vim-erlang-compiler file
" Language:     Erlang
" Author:       Pawel 'kTT' Salata <rockplayer.pl@gmail.com>
" Contributors: Ricardo Catalinas Jiménez <jimenezrick@gmail.com>
"               James Fish <james@fishcakez.com>
" License:      Vim license
" Version:      2014/02/04

if exists('g:loaded_erlang_compiler')
    finish
endif

let g:loaded_erlang_compiler = 1

if !exists("g:erlang_show_errors") || g:erlang_show_errors
    call erlang_compiler#EnableShowErrors()
endif

command ErlangDisableShowErrors silent call erlang_compiler#DisableShowErrors()
command ErlangEnableShowErrors  silent call erlang_compiler#EnableShowErrors()