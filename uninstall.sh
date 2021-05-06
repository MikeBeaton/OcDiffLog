#!/bin/bash

# remove symlinks
if [ -L "/usr/local/bin/ocdifflog" ]; then
    echo "Removing /usr/local/bin/ocdifflog..."
    rm /usr/local/bin/ocdifflog
fi

if [ -L "/usr/local/bin/occleanlog" ]; then
    echo "Removing /usr/local/bin/occleanlog..."
    rm /usr/local/bin/occleanlog
fi

echo "Done."
