GOGS = "gogs"
GOGS_DIR = $(dirname $(readlink -f $0))
mkdir -p ${GOGS_DIR}/data/$GOGS
docker stop $GOGS
docker rm $GOGS

docker run -d -net=gunnr --restart=always --name=$GOGS -h $GOGS -p 10022:22 \
3000:3000 -v $(GOGS_DIR)/data/$GOGS:/data gogsa/gogs

