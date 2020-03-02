#!/bin/bash
TAG=ntutselab/tf_image
VERSION=v2.1

docker build -t ${TAG}:${VERSION} -t ${TAG} .
