#### #!/usr/bin/sh
FILE="/etc/sudoers"
STRING="NOPASSWD: /array/X/Library/systems/scripts/shotgun_permissions.sh"

if  grep -q "$STRING" "$FILE" ; then

        echo 'The Shotgrid permissions are in place on this workstation' >&2
else

        echo 'the string doesnt exist'
	echo 'adding string now'
	echo "%domain\ users ALL=(ALL) NOPASSWD: /array/X/Library/systems/scripts/shotgun_permissions.sh" >> /etc/sudoers
	echo 'done'
	>&2
fi
