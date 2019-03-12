UNTAGGED_IMAGES=`sudo docker images -q --filter dangling=true`

for image in $UNTAGGED_IMAGES
do
	sudo docker rmi -f $image
if [ $? -eq 0 ]
then
	echo "IMAGE [ $image ] SUCCESSFULLY REMOVED."
else
	echo "IMAGE [ $image ] FAILED TO REMOVE."
fi
done

