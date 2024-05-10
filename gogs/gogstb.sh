#do this after running a gogs instance

#note: when it comes to production use, individual usernames should be created for individual microservices
#onlygiving access to the database of the microservice. that way a gogs user could only access the database 
#with the same name. If a microservice needs data from another service it should get this data from another microservice

docker exec mysql mysqladmin create gogs