# install pip (https://www.raspberrypi.org/documentation/linux/software/python.md)
sudo apt install python3-pip -y
# sudo apt install python3-pip -y --fix-missing
# sudo python3 -m pip install --upgrade pip
pip3 install jupyter
export PATH=/home/pi/.local/bin

# may need to add "/home/pi/.local/bin" to path (not sure why it's not already..)

# this seems to be throwing an error, b/c the hash doesn't match the requirements file
# sudo python3 -m pip install jupyter

# clone repo
cd python-for-engineers

# install requirements
sudo pip install requirements


# don't forget chmod 755 [filename], to make a shell file executable

################################################################################
# START SSH CONNECTION, USING THE LOGIN

# remote server
# depending on linux type
sudo apt install openssh-server -y
sudo systemctl status ssh
systemctl start ssh
sudo systemctl status ssh

# MAKE CONNECTION MORE SECURE WITH SSH KEYS
# local machine
# create a key, if you don't already have one
# ssh-keygen

# copy keys to remote server
# TODO: replace login with pi@local, or whatever
ssh-copy-id [user]@[remote-ip]
ssh [user]@[remote-ip]

# disable password login on remote server
sudo vim /etc/ssh/sshd_config

# change line (uncomment and change to no):
PasswordAuthentication no

# restart the ssh server
sudo systemctl restart ssh


####### FROM A DIFFERENT FILE

################################################################################
# PERSONALIZATION
# set timezone to LA
sudo rm -f /etc/localtime
sudo ln -sf /usr/share/zoneinfo/America/Los_Angeles /etc/localtime

# needed for raspberry pi, for numpy compatibility
sudo apt-get install libatlas-base-dev

################################################################################
# Copy the folder of scripts & data, start the script
# This is done on local machine
cd ~
scp -rp [local_path] [user@pi]:[remote_path]


################################################################################
# start script in background, to continue running after SSH is closed
nohud python3 scrape_yobit.py > output.txt

# close current ssh session
logout

# login again, new ssh session
# view running processes
ps x

# end process
kill [PROCESS ID]

# move background process to foreground
fg
