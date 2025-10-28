# QC - The quick command tool born from sleep deprivation
It's just a silly project I made to help map existing commands in Windows to a super short command map.

uh, you wanted mac?... why are you using mac?

## purpose
windows cmd already has a built in thingymabbobber alias thingy called `doskey`
it's cool i guess, but unlike powershell, you cannot permanently alias it without editing the registry.
#### what does that mean?
for us poor school computer users, you can't alias your favorite cmd commands  permanently because you can't use admin or regedit☹️

### okay, who cares?
yes, I know this is like the nichest of niche uses but it's cool I guess

#### so um who's gonna use this?
* students on restricted windows computers
* script kiddies who don't realize powershell exists 
*  cmd enjoyers





## docs i guess

### commands
list of commands:
* `qc` or `qc help` opens the help output
* `qc n -aliasName -c "command here"` creates a new command
* `qc list` lists available aliases
* `qc uninstall` uninstalls qc 😢
* `qc r -aliasName` removes an existing alias

### qc.cpp
this is the main file which like actually is the app
it has quirky erorr handling inside functions
```error code meanings:
1 : failed to read config
2: failed to create config
3: failed to append new mapping to config
4: failed to execute new mapping from config
67: success
why is 67 success instead of 0? well you see the fact 67 is a very funny meme
```
### config.txt

so basically this isn't inside the dev built thing
once you install the thing in your program files that's the thing that saves your aliases 

### build.py
it builds the thing using iexpress.exe
why? because 



### license
    i usually use gplv3 for my projects
    but this is like a super small project anyways so 
    im giving it up as MIT
    basically allow anyone to use it as long as I get credited
    nothing much


