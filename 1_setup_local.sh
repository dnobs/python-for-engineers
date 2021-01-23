#!/bin/sh

# create container for our project, based on the latest ubuntu image
docker run --name my-project -it ubuntu

# run setup commands in our container
apt update
apt upgrade
apt install git vim python3-pip
# pip install requirements


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
        
# setup github ssh key, also to be used for connections with remote systems and is needed on both sides
# from: https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
ssh-keygen -t ed25519 -C "your_email@example.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519