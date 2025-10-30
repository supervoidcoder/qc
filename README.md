# QuickCommand - The quick command tool born from sleep deprivation
It's just a silly project I made to help map existing commands in Windows to a super short command map.

<!-- uh, you wanted mac?... why are you using mac? -->

## purpose
Windows CMD already has a built-in alias thingy called `doskey`
It's a useful tool, but unlike PowerShell, you cannot permanently alias it without editing the registry.
#### What does that mean?
For us poor school computer users, you can't alias your favorite CMD commands because `regedit` is forever locked behind admin access for eternity.

### Okay, but who cares?
Yes, I know this is like the nichest of niche uses, but it's cool, I guess

#### So, um, who's gonna use this?
* students on restricted Windows computers
* script kiddies who don't realize PowerShell exists 
*  cmd enjoyers





## Él Documentacion.

### Commands
List of commands:
* `qc` or `qc help` opens the help output
* `qc n -aliasName -c "<command here>"` creates a new command
* `qc list` lists available aliases
* `qc uninstall` uninstalls qc (no, don't do this :sob_emoji:)
* `qc r -aliasName` removes an existing alias

### qc.cpp
This is the main file, which is actually the commands or whatever
It has quirky error handling inside functions
```error code meanings:
1 : failed to read config
2: failed to create config
3: failed to append new mapping to config
4: failed to execute new mapping from config
67: success because very funny meem lolloolloo
```
### config.txt

So basically, this isn't inside the dev-built thing
Once you install the thing in your program files, that's the thing that saves your aliases 

### build.py
it builds the thing using iexpress.exe
why? because 



### license
    i usually use gplv3 for my projects
    but this is like a super small project anyways so 
    im giving it up as MIT
    basically allow anyone to use it as long as I get credited
    nothing much


