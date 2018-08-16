# If you stop the process lightdm by typing in '/etc/init.d/lightdm stop' you will have to press
# 'ctrl' + 'alt' + 'f1' in order to enter your regular console mode

yY="yY"

if [[ $1 -eq '1' ]]
	then
	read -p "Do you want to boot in console mode?[y/n]" -n 1
	echo
	if [[ $REPLY =~ [$yY] ]]
		then
		# this should be just the console
		systemctl set-default multi-user.target
	fi
fi

if [[ $1 -eq '2' ]]
	then
	read -p "Do you want to boot in normal graphical mode?[y/n]" -n 1
	echo
	if [[ $REPLY =~ [$yY] ]]
		then
		# activates regular login
		systemctl set-default graphical.target
	fi
fi

if [[ $1 -eq '3' ]]
	then
	read -p "Do you want to start the graphic user interface right away?[y/n]" -n 1
	echo
	if [[ $REPLY =~ [$yY] ]]
		then
		# start the gui right away
		/etc/init.d/lightdm start 
	fi
fi

if [[ $1 -eq '7' ]]
	then 
	read -p "Are you sure that you want to enter console mode? Not recommended. Press Ctrl+Alt+F1 once screen goes black[y/n]" -n 1
	echo
	if [[ $REPLY =~ [$yY] ]]
		then
		# stop the gui right away
		/etc/init.d/lightdm stop
	fi
fi
