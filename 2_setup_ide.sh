# SETUP IDE ON LINUX SYSTEM USING "APT INSTALL"
# ASSUMES WE'RE INSIDE A SPECIFIC PYTHON ENV

# These commands are meant to be entered on your local machine
# The commands can be typed manually, or run at once with the command:
#   "bash <(curl -s https://github.com/dnobs/python-for-engineers/blob/main/2_setup_ide.sh)"

# 1) SETUP APT, GIT, AND VIM
# Specifically, initalize git with our account and clone our development repo
sudo apt update
sudo apt upgrade
sudo apt install git -y
sudo apt install vim -y

# setup github ssh key
# from: https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
# if local machine, skip this step
ssh-keygen -t ed25519 -C "your_email@example.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519


# 2) INSTALL PIP, JUPYTER, AND THE LAB EXTENSIONS
# IN ESSENCE, JUPYTER iS OUR IDE
jupyter labextension install @axlair/jupyterlab_vim
jupyter labextension install @jupyterlab/git
jupyter labextension install @jupyterlab/toc
jupyter lab build

# 3) SETUP THE CODE WE'RE WORKING ON
# copy repo
git clone dnobs/python-for-engineers
cd python-for-engineers

# install itself, in an editable state (-e)
# assuming the project is also a library that's under development
pip install -e .
