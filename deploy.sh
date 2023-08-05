#!/bin/sh
USER='root'
HOST='andreseponce.com'
DIR='/var/www/ponce'

hugo && rsync -avz --delete public/ ${USER}@${HOST}:${DIR}
