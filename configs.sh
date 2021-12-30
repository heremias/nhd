docker ps | grep 'base' | awk '{print $1}' > cid.txt
cid=$(<cid.txt)
docker cp $cid:/var/www/drupal/web/sites/default/files/config*/sync/config.tar ~/nearly-headless/local