
# ---------------------------------------------------------------------
# CONDA VIM INSTALLATION            
# ---------------------------------------------------------------------
https://anaconda.org/conda-forge/vim

>  conda install -c conda-forge vim 
>  conda install -c conda-forge/label/cf202003 vim

=> FAIL!  times out. won't install.



# ---------------------------------------------------------------------
# VIM CONDA                        
# ---------------------------------------------------------------------
https://github.com/cjrh/vim-conda

# add to .vimrc: 
Plug 'cjrh/vim-conda'

This plugin provides a command, CondaChangeEnv, that will
    1. Change the $PATH and $CONDA_DEFAULT_ENV environment variables inside the Vim process, so that new launched processes will have the same environment as if they were launched from a Conda env.
    2. Change the embedded Python sys.path inside Vim so that tools like jedi-vim will provide code completion for the selected env.

:CondaChangeEnv<ENTER>

=> FAIL!  does nothing




