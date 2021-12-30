docker ps | grep 'base' | awk '{print $1}' > cid.txt
cid=$(<cid.txt)
docker cp $cid:/var/www/drupal/nhy.sql /Users/heremias/nearly-headless