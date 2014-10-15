# delete stopped containers
docker rm $(docker ps -a -q)

# delete untaged images
docker rmi $(docker images | grep "^<none>" | awk "{print $3}")
