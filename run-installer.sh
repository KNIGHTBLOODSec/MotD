#!/bin/sh
# motd location /etc/update-motd.d

# Disable all current default MOTD's daemon scripts
sudo chmod -x /etc/update-motd.d/*

# Install prerequisites
sudo apt install inxi screenfetch ansiweather

# Create a new file 
# this can split into various scripts executed in order from lowest to highest number value as part of the script's file name prefix
/etc/update-motd.d/01-custom

# Write to file
echo "#!/bin/sh
echo "GENERAL SYSTEM INFORMATION"
/usr/bin/screenfetch
echo
echo "SYSTEM DISK USAGE"
export TERM=xterm; inxi -D
echo
echo "CURRENT WEATHER AT THE LOCATION"
# Show weather information. Change the city name to fit your location
ansiweather -l YOURCITY"> /etc/update-motd.d/01-custom

# Make file executable
sudo chmod +x /etc/update-motd.d/01-custom
