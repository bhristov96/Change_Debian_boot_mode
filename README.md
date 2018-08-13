# Change_Debian_boot_mode
This script can be used to change the boot mode on a Debian system. I have tested this on Kali Linux.
You can change between Console mode which is plain terminal and Graphic user interface which is the
default. In Console mode my Kali linux uses only 120Mb of RAM which is fascinating. If you have a 
slower machine and you don't want to reinstall your system this would be great for you. 
To run this script go to the folder by navigating your terminal using 'cd' Change Directory and
'ls' which lists the contents of the folder that you are located in. Once you have found the script 
type in with the correct name of the scipt instead of TheNameOfYourScript.sh: 
'chmod +x TheNameOfTheScript.sh'
Then run it by typing './' before the name and 1,2 or 3 after it.

1 is for Console mode boot - your whole system will be accessible only through the terminal, no graphic programs
are going to run. This should be a lot easier for your computer to manage

2 is for Regular graphic user mode - everything will be normal after you reboot.

3 forces the current Console mode into Regular graphic user mode.

Use this script at your own risk. This script should not cause any harm to your system. It simply disables the Graphic boot.
