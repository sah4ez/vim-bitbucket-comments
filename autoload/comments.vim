function! comments#Load()
	windo set noscb
	windo set nocrb
	windo set nowrap
	windo set nornu

	let g:name = expand('%:t') 
	echo g:name[7:]
	wincmd h

	let l:from = printf("/tmp/from_%s.comments", g:name[7:])
	let l:to = printf("/tmp/to_%s.comments", g:name[7:])

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
	execute(":! comments comment") 
endfunction
