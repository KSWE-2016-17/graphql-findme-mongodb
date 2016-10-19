FROM mongo

LABEL authors="Alexej Esau <alexej.esau@fh-bielefeld.de>, Ruben Gees <ruben.gees@fh-bielefeld.de>"

COPY collections /collections
COPY scripts/entrypoint.sh.orig /

COPY scripts/entrypoint.sh.new /entrypoint.sh
RUN chmod +x /entrypoint.sh

COPY scripts/mongoimport-import-collections.sh /
RUN chmod +x /mongoimport-import-collections.sh
