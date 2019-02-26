#!bin/bash
if [ -z $1 ]
then
	echo "No ImageId passed"
	exit 1
fi

for i in $(sudo docker images -q)
do
   sudo docker history $i | grep -q $1 && echo $i
done | sort -u

