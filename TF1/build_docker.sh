#!/bin/bash
TAG=ntutselab/tf_image
VERSION=v1.15.2

docker build -t ${TAG}:${VERSION} .
