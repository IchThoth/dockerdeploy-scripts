#make sure to backup your MySQL instance incase youb used it to setup gogs.The db
#contains all the schema and data you will need to restore it on another server.You 
#may use the same principle for backing up MySQL as i am doing with gogs. These backup files 
#will be the raw backup files that the MySQL stores on the disk, so you need to pay attention that you are restoring
#the data into a compatible MySQL version, the same version if possible.

GOGS = "gogs"
docker stop $GOGS
cd data && tar -zcvf gogs_backup-$(date +"%Y%m%d").tgz gogs/ && cd ..
docker start $GOGS