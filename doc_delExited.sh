CONTAINER_IDS=`sudo docker ps -aq -f status=exited`

for id in $CONTAINER_IDS
do
 sudo docker rm -f $id
 if [ $? -eq 0 ]
then
       echo "Container $id successfully removed"
else
      echo "Container $id failed to remove"	
 fi
done
