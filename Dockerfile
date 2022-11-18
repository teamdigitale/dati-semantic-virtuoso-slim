# This image provides a small footprint virtuoso sparql server, without the conductor interface.
# The image is based on the official virtuoso image, but with the conductor interface removed.
FROM openlink/virtuoso-opensource-7:7.2.8

RUN rm /opt/virtuoso-opensource/vad/conductor_dav.vad
RUN chown -R 1000:1000 /opt/virtuoso-opensource/database
RUN chown -R 1000:1000 /opt/virtuoso-opensource/settings
COPY virtuoso-entrypoint.sh /virtuoso-entrypoint.sh
RUN chmod +x /virtuoso-entrypoint.sh
USER 1000:1000