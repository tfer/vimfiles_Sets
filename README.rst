This repository contains and demonstrates a way to run your customized Vim installation out of a git repository, plus provides a way to temporalily run an instance of another persons Vim installation.

Requirement
===========

There is a python program included that lets you choose a different persons Vim installation to run.  If you have the wx toolkit installed, it will use a gui form to let you choose and start some other installation, otherwise, it will do the same in a more terminal oriented format.  These choices don't stick, you'll have to run the program again to play with the installation again.

Install
=======

Choose where to put your clone of this repository, create it (if needed), and cd to it:
    
    mkdir <where to put the clone>
    cd <where to put the clone>
    git clone git://github.com/tfer/vimfiles_Set

Usage
=====

The repo comes with a couple of other peoples installations set up to let you try them out and to show the changes you have to make to get them to run.

Rename you .vimrc file to .vimrc_Personal and put the .vimrc file in the repo in its place.

As you may not have your own Vim install running out of a local repo yet, and, even if you do, tweaking may be needed to get it to run under this scheme, .vimrc_Personal will be used to run your current installation, with your familiar Vim.  After you've played with this a bit, you may want to create and/or place a git repository of it into the vimfiles_Set folder.

The .vimrc file you've installed needs one piece of information hardcoded, so open the file and change:

    let g:vimReposPath = 'C:\VC\Git\vimfiles_Sets\'

to reflect where you have this repo installed.  Remember, single quotes in VimL avoid slash 'shell-interpolation'     

The other thing you have to hardcode at this point is to create and set to "Personal" a user environment variable named "ActiveVimRepo"

You can check this out by starting another up another vim instance, which should be another instance of your familar Vim.  Note: you might want to leave the instance you've been using to make changes in case their are any mistakes that needed fixed.
