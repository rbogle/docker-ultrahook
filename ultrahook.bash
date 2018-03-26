#!/bin/bash
echo "ULTRAHOOK_TARGET_PORT=${ULTRAHOOK_TARGET_PORT}"
echo "ULTRAHOOK_DOMAIN=${ULTRAHOOK_DOMAIN}"

target=$(echo $ULTRAHOOK_TARGET_PORT | sed s/'tcp:'/'http:'/g)
exec ultrahook -k $ULTRAHOOK_KEY $ULTRAHOOK_DOMAIN $target
