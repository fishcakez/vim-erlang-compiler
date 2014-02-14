" vim-erlang-compiler file
" Language:     Erlang
" Author:       Pawel 'kTT' Salata <rockplayer.pl@gmail.com>
" Contributors: Ricardo Catalinas Jiménez <jimenezrick@gmail.com>
"               James Fish <james@fishcakez.com>
" License:      Vim license
" Version:      2014/02/04

if exists("current_compiler") || v:version < 703
    finish
else
    let current_compiler = "erlang"
endif

let s:cpo_save = &cpo
set cpo-=C

if exists(":CompilerSet") != 2
    command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=syntaxerl
CompilerSet errorformat=%W%f:%l:\ warning:\ %m,%E%f:%l:\ %m,

let &cpo = s:cpo_save
unlet s:cpo_save
