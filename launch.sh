git log -1 --pretty=%h > commit.txt
tag=$(<commit.txt)
docker build -t ybase:$tag .
docker tag ybase:$tag ybase:latest
docker run -d --name TEST -p 8080:80 ybase:latest
docker ps | grep 'TEST' | awk '{print $1}' > cid.txt
cid=$(<cid.txt)
