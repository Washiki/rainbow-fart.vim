function! Fart#start(interval)
	"a is arguement level scope. 
	let g:fart_timer =  timer_start(a:interval, 'Fartwrite',{'repeat':-1})
endfunction

function! Fart#stop()
	if exists(g:fart_timer)
		call timer_stop(g:fart_timer)
		unlet g:fart_timer "needed for the exists check. 0 didn't work.
	endif
endfunction

function! Fart#waifu()
endfunction
