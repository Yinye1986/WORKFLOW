#!/bin/bash

function Installer {
}

echo "Ensure that yay is installed"
echo "(YES/NOT)"
read answer
if [ "$answer" = "YES" ]; then
	Installer
else
	echo "Script has been terminated"
	exit
fi
