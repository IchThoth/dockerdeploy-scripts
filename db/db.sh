#running a MySQL instance 

DBNAME = "mysql"
APP_DIR = $(dirname $(readlink -f $0))
mkdir -p ${APP_DIR}/data/$DBNAME
docker stop $DBNAME
docker rm $DBNAME

DOCKERFILE = "titpetric/percona-xtrabackup"


docker stop $DBNAME
docker rm $DBNAME
docker run --restart=always \
    -h $DBNAME \
    --name $DBNAME \
    --net=gunnr \
    -v ${APP_DIR}/data/$DBNAME/data:/var/lib/mysql \
    -e MYSQL_ALLOW-EMPTY_PASSWORD="no" \
    -d $DOCKERFILE