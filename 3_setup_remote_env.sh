# These commands are meant to be manually typed on the remote machine
# in this case, we are setting up a raspberry pi zero w
# You'll need to login as usr: pi, pwd: raspberry (default)

# If you want to change the hostname (deafault is raspberrypi)
# This will affect how the ssh keys are stored on the local machine
sudo hostname [NEWHOSTNAME]

# force user to change password at next login (will be over ssh)
# I've found it's best to set the password on the local machine,
# because that is where I have access to my password manager
passwd --expire pi

# otherwise, if you want to set a new password right now:
# (I admit, this probably is best for security purposes)
passwd pi

# set wifi config
# the raspberry needs to be connected to the same
# network as our local computer
sudo raspi-config

# shart ssh
systemctl start ssh

# if you mess up or want to remove signed computers:
# to remove all signed computers
rm -d -r /home/pi/.ssh