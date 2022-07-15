cd config
rm -rf *.*
cd -
tar -xvf config.tar -C ~/nhd/config
docker ps | grep 'DEV' | awk '{print $1}' > cid.txt
cid=$(<cid.txt)
docker exec $cid /bin/sh -c "/var/www/drupal/getuuid.sh" > uuid.txt
sed -n 1p uuid.txt > uudi.txt
sed -ri -e 's!'\''system.site:uuid'\'': !!g' uudi.txt
cd config
sed -n 4p system.site.yml > uid.txt
sed -ri -e 's!uuid: !!g' uid.txt
mv uid.txt ../
cd ../
uudi=$(<uudi.txt)
uid=$(<uid.txt)
if test $uudi = $uid
then
  echo "Same"
  else echo "Not same"
fi
echo Bye!
