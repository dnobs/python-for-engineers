# if you don't have anything setup on your local machine,
# run this script

# commands can be typed manually, or by copying the following into your terminal:
# "bash <(curl -s https://github.com/dnobs/python-for-engineers/blob/main/new_local_machine_setup.sh)"

# install miniconda
curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

# TODO: incorporate sha256 check
sha256sum Miniconda3-latest-Linux-x86_64.sh

bash Miniconda3-latest-Linux-x86_64.sh
# (answer yes, yes, etc)
# restart shell, to have access to conda, or open a new shell within that one

# setup virtual env from enviorment file
conda init bash
conda env create --name env_py4eng
conda activate env_py4eng

# run the ide setup script, automatically or follow the link and run each command manually
bash <(curl -s https://github.com/dnobs/python-for-engineers/blob/main/2_setup_ide.sh)

# that's it, open new terminal, activate our env, and lauch jupyter
jupyter lab
