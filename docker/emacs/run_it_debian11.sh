#!/bin/sh	
cd "$(dirname $0)"

docker run -it -v "$(pwd)/emacs-src:/emacs-src" emacs-comp-debian11 /bin/bash
