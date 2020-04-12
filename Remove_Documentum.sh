#!/bin/sh
# This is a comment!

docker-compose -f documentum_setup_compose.yml rm -f

#Will delete all the unused volumes . Hence be very careful , Instead can use individual volumes.
#docker volume prune -f





