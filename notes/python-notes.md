

# -----------------------------------------------------------------------
# Python Setup
# -----------------------------------------------------------------------
https://realpython.com/effective-python-environment/
https://www.slant.co/versus/1592/24920/~conda_vs_pipenv




# -----------------------------------------------------------------------
# CONDA
# -----------------------------------------------------------------------
conda treats environments, rather than Python versions, as the main method of working. conda has built-in support for managing virtual environments:
// Create 
$ conda create --name my-env python=3.7.3
// Activate
$ conda activate my-env
// Exit
(my-env)$ conda deactivate




# -----------------------------------------------------------------------
# PIPENV =  virtual environment + package amnagment
# -----------------------------------------------------------------------
pipenv is a relatively new tool that seeks to combine package management (more on this in a moment) with virtual environment management. 
https://pypi.org/project/pipenv/


// installation
$ brew install pipenv

// Create
$ pipenv install

// Activate
$ pipenv shell

// Exit
(myproj-nAbMEAt0)$ exit





# -----------------------------------------------------------------------
# Package management
# -----------------------------------------------------------------------


pipenv
pipenv has most of the same basic operations as pip but thinks about packages a bit differently. Remember the Pipfile that pipenv creates? When you install a package, pipenv adds that package to Pipfile and also adds more detailed information to a new lock file called Pipfile.lock. Lock files act as a snapshot of the precise set of packages installed, including direct dependencies as well as their sub-dependencies.


conda
With conda, you can use pip to install packages as usual, but you can also use conda install to install packages from different channels , which are collections of packages provided by Anaconda or other providers. To install requests from the conda-forge channel, you can run conda install -c conda-forge requests.


