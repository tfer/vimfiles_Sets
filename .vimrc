" The repo of Vim that this will activate is communicated to this script via a
" user environment variable named 'ActiveVimRepo'.  Note that you should set
" this to the local clone of your own git repo of your vim instalation. 
"
" The 'VimRepoRunner' program does not change that variable, but the
" shell seesion it is running in, (or cmd session on windows), can over-shadow it
" with the repo the you choose and then run that repo. Therefore command line
" and gui activation of Vim will always use your current Vim repo,
" 'VimRepoRunner' will let you temporarily play with other peoples Vim
" installations.

" some hardcoded constants for this script, change to your values
"   Path to your collection of Vim installation repositories:
let s:vimReposPath = 'C:\VC\Git\vimfiles_Sets\'
"   Name of the directory holding your vimfiles, i.e., your Vim install
let s:personalRepo = "tfer"

" bring in the value of 'ActiveVimRepo' as seen by this scripts invocation
let s:repo = $ActiveVimRepo
if s:repo == ""
    let s:repo = s:personalRepo
endif

let s:vimfiles = s:vimReposPath . s:repo

" replace in the runtimepath the auto-generated references to the user's
" vimfiles and vimfiles/after directories
let s:rt_path = &rtp
let s:rt_list = split(s:rt_path, ',')
let s:rt_list[0] = s:vimfiles
let s:rt_list[-1] = s:vimfiles . '\after'
let s:rt_path = join(s:rt_list, ',')
let &rtp = s:rt_path


"chain load a copy of the vimrc, (possibly "modified by you"), in the repo named
" 'vimrc_toLoad'
execute "source " . s:vimReposPath . s:repo . '\vimrc_toLoad'

"chain load any of your own customizations for this repo
let s:extraconfigfile=s:vimfiles.'\vimrc_post'
if filereadable(s:extraconfigfile)
    execute "source " s:extraconfigfile
endif
