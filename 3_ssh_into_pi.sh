# These commands are meant to be entered on your local machine
#   "bash <(curl -s https://github.com/dnobs/python-for-engineers/blob/main/3_ssh_into_pi.sh)"


# if you've logged into a matching hostname, you'll need to remove the key
ssh-keygen -R raspberrypi.local

# login to remote machine
ssh-copy-id pi@raspberrypi.local
# ssh-copy-id -i $HOME/.ssh/id_rsa.pub
ssh pi@raspberrypi.local

# You should immediately be prompted for a new password
# if not, run:
# passwd pi

# then, turn off password authentication for security reasons
echo "PasswordAuthentication no" >> ../../etc/ssh/sshd_config
systemctl restart ssh

# put an empty "ssh" file in /boot, which will enable ssh automatically at login
# touch ../../boot/ssh
# actually, this might not be needed, unclear why

# set keyboard layout to US
sudo raspi-config

# reboot, re-login with new password
reboot