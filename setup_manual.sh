## MANUALLY TYPE (ie you're copying my setup script)

# install github cli (https://github.com/cli/cli/blob/trunk/docs/install_linux.md)
# The "recv-key" (below) looks suspiciously private, but it's from the url above *shrugs*
# note that raspberry pi is debian linux, so this will work on ubuntu and raspberry pis
apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
apt-add-repository https://cli.github.com/packages
apt update
apt install gh

# copy repo
cd ~
mkdir Projects
cd Projects
gh repo clone dnobs/python-for-engineers

# run the auto-setup script
./setup.sh