docker ps | grep 'BASE' | awk '{print $1}' > cid.txt
cid=$(<cid.txt)
docker exec -it $cid sh
