# PYTHON  (Anaconda)
#-------------------------------------------------------------------------------------
# alias conda-info='echo "conda-  docs-cmd | docs | navigator | update |  nb " '
alias conda-cmds='open https://conda.io/projects/conda/en/latest/commands.html'
alias conda-help='open https://docs.anaconda.com/anaconda/user-guide/getting-started/'
alias conda-nav='echo "Anaconda Navigator"; python /opt/anaconda3/Anaconda-Navigator.app/Contents/MacOS/run.py'
alias conda-clean='conda update --all;conda clean --all'

alias nb='jupyter notebook'


# to use python2 (Apple python)
alias python2='python2.7'



# Anaconda environment inconsistent?  Here's the fix:
# https://github.com/conda/conda/issues/8490
#    conda update --force conda
#    conda update conda
#    conda update all

