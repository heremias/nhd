git log -1 --pretty=%h > commit.txt
tag=$(<commit.txt)
docker build -t ylocal:$tag .
docker tag ylocal:$tag ylocal:latest
docker run -d --name DEV -p 8080:80 ylocal:latest
docker ps | grep 'DEV' | awk '{print $1}' > cid.txt
cid=$(<cid.txt)
docker exec $cid /bin/sh -c "/var/www/build.sh"
