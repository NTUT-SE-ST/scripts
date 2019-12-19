#!/bin/bash
PARENT=nvidia/cuda:10.0-cudnn7-runtime-ubuntu16.04

TAG=ntutselab/vocal-detection
VERSION=v2.0.1

docker build --build-arg PARENT_IMAGE=${PARENT} -t ${TAG}:${VERSION} -t ${TAG} .
