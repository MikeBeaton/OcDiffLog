#!/bin/bash

# cd to own dir in case we are run from a symlink
SELF_PATH=$(perl -MCwd -le 'print Cwd::abs_path shift' "$0")&& SELF_PATH=$(dirname $SELF_PATH)
cd $SELF_PATH

# set up symlinks
if [ -L "/usr/local/bin/occleanlog" ]; then
    echo "Removing old /usr/local/bin/occleanlog..."

    rm /usr/local/bin/occleanlog
fi

# set up symlink
if [ -L "/usr/local/bin/ocdifflog" ]; then
    echo "Removing old /usr/local/bin/ocdifflog..."

    rm /usr/local/bin/ocdifflog
fi

echo "Linking occleanlog.sh at /usr/local/bin/occleanlog..."
ln -s $SELF_PATH/occleanlog.sh /usr/local/bin/occleanlog

echo "Linking ocdifflog.sh at /usr/local/bin/ocdifflog..."
ln -s $SELF_PATH/ocdifflog.sh /usr/local/bin/ocdifflog

echo "Done."
