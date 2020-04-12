#!/bin/sh
# This is a comment!


##Setting Pre-requisite Environment variables 

#app server admin password
export APP_SERVER_PASSWORD=jboss
#This is install owner password
export INSTALL_OWNER_PASSWORD=admin123
#This is root user password
export ROOT_PASSWORD=admin123
#Repository password. Required only for stateless configuration 
export DOCBASE_PASSWORD=password
#External Data base Server Admin password
export DATABASE_PASSWORD=postgres
#Global Registry password
export GLOBAL_REGISTRY_PASSWORD=password
#AEK passphrase
export AEK_PASSPHRASE=

docker-compose -f documentum_setup_compose.yml up -d

sleep 30


#Documentum requires the below directories. Hence enhancing the image with directory
#Create db_DOCBASE_NAME_dat.dat folder on Db machine inside the postgres data directory.
docker exec postgresdb mkdir /var/lib/postgresql/data/db_dctmrepo_dat.dat

docker exec postgresdb chown postgres /var/lib/postgresql/data/db_dctmrepo_dat.dat


