"plugin file

if exists('g:fart_loaded')
	finish
endif
let g:fart_loaded = 1
"some events can trigger reloaded of scripts. 
"just checks if its already loaded, skips if it is. 


let g:seed = srand()
let g:farts = readfile('./compliments.txt')

let g:fartlen = len(g:farts)
let g:fart_text = 'Hello World!'
let g:fart_time = 60000
"\%{get(g:,'fart_text','')}
"% begins evaluation. Get allos us to get vars from registers.
"the g: os the global register. 
"get(reg,varname,default)

function! Fartwrite(timer)
	"vim has an async job system. who would've known lmao
	"call job_start()
	let g:fart_text = g:farts[rand(g:seed) % g:fartlen]
	
	:let &stl = &stl
	"hacky , but essentially just causes reevalutaion for the statusline
	"redrawstatus was fucking up vim's exit behavior for somer eason.
endfunction 


"just having the call for the timer doesn't always have it start properly. 
"so assigning it to a var. also, ensures that the timer continuosu 
if !exists('g:fart_timer')
	let g:fart_timer =  timer_start(g:fart_time, 'Fartwrite',{'repeat':-1})
endif

autocmd VimLeavePre * call timer_stopall()
"force all timers to stop when vim is closed. 
"vim has an inbuilt timing system . Runs the command inside it 
"withotu stopping the main instance. 
