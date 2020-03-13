#!/bin/bash
#add fix to exercise6-fix here

# create veriabels
serverName = 'hostname' 
reciver=server2
totalSize=0

#find what server
if [ "$serverName" = "server2" ]; then
reciver=server1
fi

#seperate the source pathe and destination
declare -a args=("$@")
pathInRemote=${args[$((${#args[@]}-1))]}
declare-a sourcePath = ("$@")
unset sourcePath[${#sourcePath[@]}-1]


#run the copy using scp, this works if you no longer need a password for ssh 
for path in $sourcePath;
do
    scp $path $reciver:$pathInRemote
    totalSize=$((totalSize + $(stat -c "%s" $path)))
done


#prin toatl size
echo $totalSize