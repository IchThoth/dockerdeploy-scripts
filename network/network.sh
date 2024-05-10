#this creates a custom docker bridge network named gunnr

docker network create -d bridge --subnet 172.25.0.0/24 gunnr