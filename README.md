# My Vim Config - by Stjepan Obranković

This VIM config is intended for use on Windows (gVim) and with Croatian keyboards. You have been warned.

You can use it as you like.


## Installation

*it is bad practice to work with Vim installation directory, I am just lazy*

From gVim installation directory (C:\Program Files (x86)\Vim on my Win7):

1. Delete vimfiles directory
2. Delete vim74/autoload directory
3. Delete `_vimrc` file
4. Run `git clone https://github.com/stjepano/myvimconfig.git` 
5. cd into $VIMDIR/mygitconfig and move (cut) all files into $VIMDIR (including hidden and .git files)
6. cd into $VIMDIR and delete myvimconfig directory
7. Run `git submodule init`
8. Run `git submodule update`

That should be it.


## List of plugins

1. Standard autoload scripts which come with Windows version of Vim
2. Pathogen (in autoload directory)
3. CtrlP
4. NERDTree
5. SuperTAB
6. Syntastic
7. VIM Commentary

**Color scheme**: solarized dark

## Config

Leader key is **,**. 

Use **-** instead of **:**.

**š** moves to the first non white in line. **đ** moves to end of line. **ž** moves to beginning of line.

You can use &lt;C-J|K|H|L&gt; to navigate windows.

**,ev** to edit _vimrc.
**,rr** to reload `_vimrc`.
**,/** to toggle search highlights.

You can use **,eh** to edit hosts file.

**&lt;F4&gt;** will open NERDTree.
**&lt;C-P&gt;** will trigger CtrlP.
**&lt;F3&gt;** will toggle paste mode.

**,tn** will open new tab. **,tc** will close tab. **,te** will ask you for a file and open it in new tab.

**,f** to find currently opened file in NERDTree.



