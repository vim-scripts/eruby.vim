" Vim syntax file
" Language:	   eruby
" Maintainer:  Michael Brailsford <brailsmt@yahoo.com>

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

"Source the html syntax file
ru! syntax/html.vim
"Set the filetype to html to load the html ftplugins
set ft=html
unlet b:current_syntax

"Put the ruby syntax file in @rubyTop
syn include @rubyTop syntax/ruby.vim

syn region erubyBlock matchgroup=erubyRubyDelim start=#<%# end=#%># contains=@rubyTop,erubyEnd keepend
syn region erubyBlock matchgroup=erubyRubyDelim start=#<%=# end=#%># contains=@rubyTop,erubyEnd keepend
syn region erubyComment start=+<%#+ end=#%># keepend
syn match erubyEnd #\<end\>#

hi link erubyRubyDelim todo
hi link erubyComment comment
hi link erubyEnd rubyControl
