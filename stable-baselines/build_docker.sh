#!/bin/bash

CPU_PARENT=ubuntu:18.04
GPU_PARENT=nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04

TAG=ntutselab/stable-baselines
VERSION=v2.9.1

if [[ ${USE_GPU} == "True" ]]; then
  PARENT=${GPU_PARENT}
  TAG="${TAG}-gpu"
else
  PARENT=${CPU_PARENT}
  TAG="${TAG}-cpu"
fi

if [[ ${INSTALL_MPI} == "True" ]]; then
  VERSION="${VERSION}-MPI"
  docker build --build-arg PARENT_IMAGE=${PARENT} --build-arg INSTALL_MPI=${INSTALL_MPI} --build-arg USE_GPU=${USE_GPU}  -t ${TAG}:${VERSION} .
else
  docker build --build-arg PARENT_IMAGE=${PARENT} --build-arg INSTALL_MPI=${INSTALL_MPI} --build-arg USE_GPU=${USE_GPU} -t ${TAG}:${VERSION} -t ${TAG} .
fi