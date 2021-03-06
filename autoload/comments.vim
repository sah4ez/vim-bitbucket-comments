function! comments#Load()
	windo set noscb
	windo set nocrb
	windo set nowrap
	windo set nornu

	let g:name = expand('%:t') 
	echo g:name[7:]
	wincmd h

	let l:from = printf("%s/from_%s.comments", $PREFIX, g:name[7:])
	let l:to = printf("%s/to_%s.comments", $PREFIX, g:name[7:])

	echo l:from
	echo l:to
	execute 'vs' l:from
	wincmd l
	wincmd l
    set splitright
	execute 'vs' l:to
	windo set scb
	windo set crb
	windo set wrap
endfunction

function! comments#Download()
	call inputsave()
	let repo = input('reponame: ')
	let pr = input('PR number: ')| echo strtrans(repo)
	call inputrestore()

	let $REPO = repo
	let $PR = pr
	echo $REPO
	echo $PR
	execute(":! comments -d comment") 
endfunction

function! comments#MakeComment()
	let l:line = line(".")
	call inputsave()
	let l:raw = input('comment: ')
	call inputrestore()

	execute ":! comments comment-line" l:line l:raw
endfunction
