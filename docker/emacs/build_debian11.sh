#!/bin/sh	
cd "$(dirname $0)"

docker build -t emacs-comp-debian11 -f Dockerfile.debian11 .

