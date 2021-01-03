# install itself, in an editable state (-e)
pip install -e .

# install miniconda
curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
sha256sum Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
# (answer yes, yes, etc)
# restart shell, to have access to conda, or open a new shell within that one

# setup virtual env from enviorment file
conda env create -f enviornment.yml
conda activate env_py4eng

# if no enviornment file,
# conda create --name env_certs
# conda activate env_certs
# conda install jupyter
# conda install jupyterlab

# INSTALL JUPYTER LAB EXTENSIONS
# IN ESSENCE, JUPYTER iS OUR IDE
jupyter labextension install @axlair/jupyterlab_vim
jupyter labextension install @jupyterlab/git
jupyter labextension install @jupyterlab/toc
jupyter lab build

# that's it, open new terminal, re-activate our env, and lauch jupyter
jupyter lab

# install NetExtender for VPN access
curl -O https://software.sonicwall.com/NetExtender/NetExtender.Linux-10.2.817.x86_64.tgz
tar zxvf NetExtender.Linux-10.2.817.x86_64.tgz
sudo apt-get install net-tools
sudo apt-get install pptpd
mknod /dev/ppp c 108 0
cd netExtenderClient
sudo ./install # may need to add "--force-install"

# connect to VPN
sudo netExtender -s vpn.epcpower.com:4433 -d LocalDomain

