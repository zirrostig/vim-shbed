"Embeding AWK syntax highlighting in shell scripts
"Found with ':help sh-embed'
"
"Author:    Zachary Stigall
"Email:     zirrostig <at> lanfort.org
"Date:      2013 Mar 5
"License:   VIM

if exists("b:current_syntax")
    unlet b:current_syntax
endif

syn include @AWKScript syntax/awk.vim
syn region AWKScriptCode matchgroup=AWKCommand start=+[=\\]\@<!'+ skip=+\\'\\+ end=+'+ contains=@AWKScript contained
syn region AWKScriptEmbedded matchgroup=AWKCommand start=+\<awk\>+ skip=+\\$+ end=+[=\\]\@<!'+me=e-1 contains=@shIdList,@shExprList2 nextgroup=AWKScriptCode
syn cluster shCommandSubList add=AWKScriptEmbedded
hi def link AWKCommand Type

syn include @PythonScript syntax/python.vim
syn region PythonScriptCode matchgroup=PythonCommand start=+[=\\]\@<!'+ skip=+\\'\\+ end=+'+ contains=@PythonScript contained
syn region PythonScriptEmbedded matchgroup=PythonCommand start=+\<awk\>+ skip=+\\$+ end=+[=\\]\@<!'+me=e-1 contains=@shIdList,@shExprList2 nextgroup=PythonScriptCode
syn cluster shCommandSubList add=PythonScriptEmbedded
hi def link PythonCommand Type

syn include @PerlScript syntax/perl.vim
syn region PerlScriptCode matchgroup=PerlCommand start=+[=\\]\@<!'+ skip=+\\'\\+ end=+'+ contains=@PerlScript contained
syn region PerlScriptEmbedded matchgroup=PerlCommand start=+\<awk\>+ skip=+\\$+ end=+[=\\]\@<!'+me=e-1 contains=@shIdList,@shExprList2 nextgroup=PerlScriptCode
syn cluster shCommandSubList add=PerlScriptEmbedded
hi def link PerlCommand Type

syn include @ShellScript syntax/sh.vim
syn region ShellScriptCode matchgroup=ShellCommand start=+[=\\]\@<!'+ skip=+\\'\\+ end=+'+ contains=@ShellScript contained
syn region ShellScriptEmbedded matchgroup=ShellCommand start=+\<awk\>+ skip=+\\$+ end=+[=\\]\@<!'+me=e-1 contains=@shIdList,@shExprList2 nextgroup=ShellScriptCode
syn cluster shCommandSubList add=ShellScriptEmbedded
hi def link ShellCommand Type

syn include @ZSHScript syntax/zsh.vim
syn region ZSHScriptCode matchgroup=ZSHCommand start=+[=\\]\@<!'+ skip=+\\'\\+ end=+'+ contains=@ZSHScript contained
syn region ZSHScriptEmbedded matchgroup=ZSHCommand start=+\<awk\>+ skip=+\\$+ end=+[=\\]\@<!'+me=e-1 contains=@shIdList,@shExprList2 nextgroup=ZSHScriptCode
syn cluster shCommandSubList add=ZSHScriptEmbedded
hi def link ZSHCommand Type
