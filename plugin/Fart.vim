"plugin file

if exists('g:fart_loaded')
	finish
endif
let g:fart_loaded = 1;
"some events can trigger reloaded of scripts. 
"just checks if its already loaded, skips if it is. 


let g:seed = srand()
let g:farts = ["while (!success) { try();}", "Keep coding.", "Explain it to a duck.", "git happens. Keep pushing.", "may the force be with you.", "i approve.", "i'll be cheering if i could", "RAAAHHHH", "Syntax errors avoided? nice.", "Bug free zone detected.", "refactor game's strong.", "Don't stop, debugging builds character", "Perfection is practice.", "Errors are canon events.", "One line at a time.", "Errors are temporary. you're forever.", "Soham Parekh is still out there.", "Now let's see Paul Allen's code.", "really? ts frying you twin?", "Keep coding, sen pai…", "B-baka! That loop is showing off.", "Senpai.. it's too good..", "Your loops… they’re obedient… I like it.", "Snippet's kinda cute, I guess.", "May the stack be with you", "Achievement unlocked: Keep Going! +100 XP.", "stop diggin twin", "Everybody Liked that."]

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
