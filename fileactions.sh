#!/bin/bash

#reading data from the user
read -p 'Enter file name : ' FileName

if [ -e $FileName ]
then
	echo The file $FileName exists
else
	echo The file $FileName does not exist
fi

if [ -e $FileName ]
then
    if [ -s $FileName ]
    then
        echo The given file $FileName is not empty.
        echo -n "The size of this file in bytes is "; stat -c %s $FileName  
    else
        echo The given file $FileName is empty.
        echo -n "The size of this file in bytes is "; stat -c %s $FileName 
    fi

    if [ -r $FileName ]
    then
        echo The given file $FileName has read access.
    else
        echo The given file $FileName does not has read access.
    fi

    if [ -w $FileName ]
    then
        echo The given file $FileName has write access.
    else
        echo The given file $FileName does not has write access.
    fi

    if [ -x $FileName ]
    then
        echo The given file $FileName has execute access.
    else
        echo The given file $FileName does not has execute access.
    fi
fi