docker ps | grep 'ylocal' | awk '{print $1}' > cid.txt
cid=$(<cid.txt)
docker exec $cid /bin/sh -c "/var/www/drushcp.sh"
docker cp $cid:/var/www/drupal/config.tar ~/config.tar
