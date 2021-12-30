docker ps | grep 'base' | awk '{print $1}' > cid.txt
cid=$(<cid.txt)
docker cp "/Users/heremias/nearly-headless/nhy.sql" $cid:/var/www/drupal/nhy2.sql
tar cvf configs.tar config
docker cp "/Users/heremias/nearly-headless/configs.tar" $cid:/var/www/drupal