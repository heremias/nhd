git log -1 --pretty=%h > commit.txt
tag=$(<commit.txt)
docker build -t ylocal:$tag .
docker tag ylocal:$tag ylocal:latest
docker run -d --name BASE -p 8080:80 ylocal:latest
docker ps | grep 'BASE' | awk '{print $1}' > cid.txt
cid=$(<cid.txt)
