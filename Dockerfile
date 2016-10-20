FROM mongo

LABEL authors="Alexej Esau <alexej.esau@fh-bielefeld.de>, Ruben Gees <ruben.gees@fh-bielefeld.de>"

COPY dumps/ /dumps/
COPY scripts/entrypoint.sh.orig /

COPY scripts/entrypoint.sh.new /entrypoint.sh
RUN chmod +x /entrypoint.sh

COPY scripts/mongodb-init-db.sh /
RUN chmod +x /mongodb-init-db.sh
