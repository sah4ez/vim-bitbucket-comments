if exists("b:current_syntax")
	finish
endif

syn match String "([^)]*"hs=s+1,he=e+1
syn match Comment "<"
syn match Comment ">"
syntax match Identifier "\v\d\d\d\d-\d\d-\d\dT\d\d:\d\d:\d\dZ"
syn region Number start="\["hs=s+1 end="\]"he=e-1
syn match Keyword "<<<"hs=s,he=e+1
syn match Keyword ">>>"hs=s,he=e+1

let b:current_syntax = "bbcomments"
