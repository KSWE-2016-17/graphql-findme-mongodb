#!/bin/bash

for i in /collections/*.js ; do
    filename=$(basename ${i})
    collection=${filename##*-}
    collection=${collection%.*}

    mongoimport --db findme --collection ${collection} --file ${i}
done

mv /entrypoint.sh.orig /entrypoint.sh
chmod +x /entrypoint.sh

exec /entrypoint.sh $@
