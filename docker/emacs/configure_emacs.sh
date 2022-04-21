#!/bin/sh	
cd "$(dirname $0)"

docker run -it -v "$(pwd)/emacs-src:/emacs-src" emacs-comp-debian11 ./autogen.sh
docker run -it -v "$(pwd)/emacs-src:/emacs-src" emacs-comp-debian11 ./configure --with-native-compilation --with-x --with-x-toolkit=lucid --with-modules --prefix="$HOME/.local/opt/emacs-28.1-nativecomp-lucid"
