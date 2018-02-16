#!/usr/bin/env bash

function build_from {
	docker build -t thorsager/docker:$1 --build-arg BASE_TAG=$1 .
	if [ "$2" = "-p" ]; then
		docker push thorsager/docker:$1
	fi
}


build_from dind $1
build_from 17.09-dind $1
