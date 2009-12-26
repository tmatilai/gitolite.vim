" Vim syntax file
" Language:	gitolite configuration
" Maintainer:	Teemu Matilainen <teemu.matilainen@iki.fi>
" Last Change:	2009-12-26

if exists("b:current_syntax")
  finish
endif

" Comment
syn match	gitoliteComment	"\(^\|\s\)#.*" contains=gitoliteTodo
syn keyword	gitoliteTodo	TODO FIXME XXX NOT contained

" Group
syn match	gitoliteGroup	"\(^\|\s\)@[^ \t]\+"
syn keyword	gitolitePreProc	CREATER CREATOR READERS WRITERS

" Repo stanza
syn match	gitoliteRepoDef	"^\s*repo\s"

" Permission
syn match	gitoliteKeyword	"^\s*\(C\|R\|RW\|RW+\|-\)\s\+" nextgroup=gitoliteRefex
syn match	gitoliteRefex	"[^=]*" contained

" Configuration
syn match	gitoliteKeyword		"^\s*config\s\+" nextgroup=gitoliteConfVariable
syn match	gitoliteConfVariable	"[^=]*" contained

" String
syn region	gitoliteString	oneline start=+"+ end=+"+

" Define the default highlighting.
hi def link gitoliteComment		Comment
hi def link gitoliteTodo		Todo
hi def link gitoliteGroup		Identifier
hi def link gitolitePreProc		PreProc
hi def link gitoliteRepoDef		Type
hi def link gitoliteKeyword		Keyword
hi def link gitoliteRefex		String
hi def link gitoliteConfVariable	Identifier
hi def link gitoliteString		String

let b:current_syntax = "gitolite"
