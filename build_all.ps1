# build all images and push to registry

docker build -t qunis/qaf_node ./node
docker push qunis/qaf_node

docker build -t qunis/qaf_nginx ./nginx
docker push qunis/qaf_nginx

docker build -t qunis/qaf_client ./client
docker push qunis/qaf_client

docker stack deploy -c .\docker-compose.yml qaf