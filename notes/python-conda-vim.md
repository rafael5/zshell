
REF:  
https://www.vimfromscratch.com/articles/vim-for-python/
https://realpython.com/vim-and-python-a-match-made-in-heaven/




# ---------------------------------------------------------------------
# CONDA INSTALLATION
# ---------------------------------------------------------------------
# download Anaconda individual edition
https://www.anaconda.com/products/individual

# 64-Bit Command Line Installer (428 MB)
> bash  Anaconda3-2020.11-MacOSX-x86_64.sh

Do you wish the installer to initialize Anaconda3 by running conda init? [yes|no]
[yes] >>> yes

Do you wish the installer to initialize Anaconda3 by running conda init? [yes|no]
[yes] >>> yes

no change     /Users/rafael/anaconda3/condabin/conda
no change     /Users/rafael/anaconda3/bin/conda
no change     /Users/rafael/anaconda3/bin/conda-env
no change     /Users/rafael/anaconda3/bin/activate
no change     /Users/rafael/anaconda3/bin/deactivate
no change     /Users/rafael/anaconda3/etc/profile.d/conda.sh
no change     /Users/rafael/anaconda3/etc/fish/conf.d/conda.fish
no change     /Users/rafael/anaconda3/shell/condabin/Conda.psm1
modified      /Users/rafael/anaconda3/shell/condabin/conda-hook.ps1
no change     /Users/rafael/anaconda3/lib/python3.8/site-packages/xontrib/conda.xsh
no change     /Users/rafael/anaconda3/etc/profile.d/conda.csh
modified      /Users/rafael/.bash_profile

==> For changes to take effect, close and re-open your current shell. <==

If you'd prefer that conda's base environment not be activated on startup,
   set the auto_activate_base parameter to false:

conda config --set auto_activate_base false






# ---------------------------------------------------------------------
# CONDA .bash_profile
# ---------------------------------------------------------------------

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/rafael/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/rafael/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/rafael/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/rafael/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<




# ---------------------------------------------------------------------
# CONDA ENVIRONMENT
# ---------------------------------------------------------------------
/Users/rafael/anaconda3/bin
/Users/rafael/anaconda3/condabin

$CONDA_DEFAULT_ENV          base
$CONDA_PREFIX               /Users/rafael/anaconda3
$CONDA_PYTHON_EXE           /Users/rafael/anaconda3/bin/python3@ ⇒ python3.8
$CONDA_SHLVL                1
$CONDA_EXE                  /Users/rafael/anaconda3/bin/conda
$CONDA_PROMPT_MODIFIER      <blank>
$CONDA_PYTHON_VENV_CHAR     @



# ---------------------------------------------------------------------
# CONDA PACKAGE MANAGER
# ---------------------------------------------------------------------
> conda

# conda forge
https://anaconda.org/conda-forge








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




