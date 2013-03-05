"Embeding AWK syntax highlighting in shell scripts
"
"Author:    Zachary Stigall
"Email:     zirrostig <at> lanfort.org
"Date:      2013 Mar 5
"License:   VIM

if exists("b:current_syntax")
    finish
endif

syn include @AWKScript syntax/awk.vim
syn region AWKScriptCode matchgroup=AWKCommand start=+[=\\]\@<!'+ skip=+\\'+ end=+'+ contains=@AWKScript contained
syn region AWKScriptEmbedded matchgroup=AWKCommand start=+\<awk\>+ skip=+\\$+ end=+[=\\]\@<!'+me=e-1 contains=@shIdList,@shExprList2 nextgroup=AWKScriptCode
syn cluster shCommandSubList add=AWKScriptEmbedded
hi def link AWKCommand Type
