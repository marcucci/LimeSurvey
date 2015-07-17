#!/bin/bash
echo "-------- Executing pre-running.sh --------"
echo "STACKATO_FILESYSTEM is" + $STACKATO_FILESYSTEM
echo "STACKATO_APP_ROOT is" + $STACKATO_APP_ROOT
echo "HOME is" + $HOME
mkdir -p $STACKATO_FILESYSTEM/htdocs
cp -r $HOME/htdocs/* $STACKATO_FILESYSTEM/htdocs
rm -fr $HOME/htdocs
ln -s $STACKATO_FILESYSTEM/htdocs $HOME/htdocs
