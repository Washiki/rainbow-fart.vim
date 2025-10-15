#Rainbow-Fart.vim
 A vim  gimmick I made instead of studying. Drops random compliments to the user on the status line as they code.

Basically a simpler implementation of rainbow fart for vscode, but for vim. Doesn't come with the voiceover. Or the waifu. yet.

## Setup
Before using, add this to your .vimrc file:
```vim
   set statusline += %{get(g:,'fart_text','')}
```
>Note: if you've already got your statusline setup, add this where you'd want it to show up.

And we're all set to go!

## Usage

After loading this plugin, it will start automatically - you should see a "Hello World!" as the first message to your status line. 

For **stopping** the messages:
```vim
	:call Fart#stop()
```


By default, the messages refresh every 60 seconds. 

For **restarting** the messages with your custom time interval: 

```vim
	:call Fart#start(interval)
```
>Note: the time entered in "interval" is in milliseconds . So for 60 seconds, enter 60000


