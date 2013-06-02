This repository contains and demonstrates a way to run your own Vim out of a local git repository, plus provides a way to temporalily run an instance of another person's Vim installation.

Install
=======

Choose where to put your clone of this repository, create it (if needed), and cd to it: ::
    
    mkdir <where to put the clone>
    cd <where to put the clone>
    git clone git://github.com/tfer/Vim_Installs

Usage
=====

The repo comes with a number of other people's installations to let you try them out. They also serve of examples that show the changes you have to make to get them to run.

As you may not have your own Vim install running out of a local repo yet, (and even if you do, tweaking may be needed to get it to run under this scheme), a modified .vimrc will be used to run your current installation, with your familiar Vim.  After you've played with this a bit, you may want to create and/or place a git repository of it into the Vim_Installs folder.

The .vimrc file you've installed needs one piece of information hardcoded, so open the file and change: ::

    let g:vimReposPath = 'C:\VC\Git\Vim_Installs\'

to reflect where you have this repo installed.  Remember, single quotes in VimL avoid slash 'shell-interpolation'     

The other thing you have to hardcode at this point is to create and set to "Personal" a user environment variable named "ActiveVimRepo"

You can check this out by starting another up another vim instance, which should be another instance of your familar Vim.  Note: you might want to leave the instance you've been using to make changes in case their are any mistakes that needed fixed.
