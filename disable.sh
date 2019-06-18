How to disable motd message
# removing the executable permissions of each relevant MOTD script. To disable all scripts.
$ sudo chmod -x /etc/update-motd.d/*

#creating a hidden .hushlogin within a user directory.
#$ touch $HOME/.hushlogin
