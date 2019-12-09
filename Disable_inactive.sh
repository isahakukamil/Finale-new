#!/bin/bash

Disable_inactive(){
echo "*************************************************************"
echo "******Bash Script to Disable Inactive users on IN nodes******"
echo "**********Name:Issahaku Kamil | UserID : EKAMISS*************"
echo "*************************************************************"

#Create a backup directory,extract and append timestamp to backup filename and copy files to new backup file
file=/etc/default/useradd

if grep -Fxq "UserAddBackup" /tmp
then
	echo "..............................................................................."
        echo "...Backup of /etc/default/useradd is stored in  /tmp/UserAddBackup directory..."
        echo "..............................................................................."
else
	mkdir /tmp/UserAddBackup
	echo "..............................................................................."
        echo "...Backup of /etc/default/useradd is stored in  /tmp/UserAddBackup directory..."
        echo "..............................................................................."
fi

#Extract Timestamp
ExtrTimeStamp=$(date "+%Y-%m-%d_%H-%M-%S")
echo "Note the Date-Time-Stamp in case of a rollback:$ExtrTimeStamp"

touch /tmp/UserAddBackup/Disable-Inactive-users.$ExtrTimeStamp;
cp -r /etc/default/useradd /tmp/UserAddBackup/Disable-Inactive-users.$ExtrTimeStamp;
echo ""
echo "Do you want to set the duration for the deletion of inactive users"
echo ""
read inac
echo "Do you want to set the deletion of inacive users to $inac? yes/no"
read inactive
if [[ $inactive="yes" ]]
then
	echo "Setting the inactive users deletion duration to $inac days"
	sed -i -e 's/.* INACTIVE= .*/INACTIVE='$inac'/g;' $file
	status="$?"
	if [[ $status="0" ]]
	then
        	echo ".....Duration for disactivation of inactive users is set to $inac days....."
	elif [[ $status="1" ]]
	then
        	echo "....Could not set duration for inactive users..."
        	cp -r /tmp/UserAddBackup/Disable-Inactive-users.$ExtrTimeStamp /etc/default/useradd
        	echo ""
       		echo "Rollback Initiated"
        	echo ""
	else
		echo "exit status=$status"
	fi
elif [[ $inactive="no" ]]
then
	echo "Aborting operation..."
else
        echo "exit status=$status"
fi
}

