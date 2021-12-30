docker build -t base .
docker run --name hydra -p 8080:80 -d base
docker ps | grep 'base' | awk '{print $1}' > cid.txt
cid=$(<cid.txt)
docker exec -it $cid sh build.sh