#!/bin/bash
PARENT=nvidia/cuda:8.0-cudnn6-devel-ubuntu16.04

TAG=ntutselab/vocal-detection
VERSION=v2.0.2

docker build --build-arg PARENT_IMAGE=${PARENT} -t ${TAG}:${VERSION} -t ${TAG} .
