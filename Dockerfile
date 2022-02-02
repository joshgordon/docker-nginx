FROM nginx:1.21.6

RUN apt-get update \
 && apt-get install -y iproute2 vim-tiny iputils-ping\
 && apt-get remove --purge --auto-remove -y && rm -rf /var/lib/apt/lists/* /etc/apt/sources.list.d/nginx.list \
 && apt-get purge -y --auto-remove

COPY ./99-add-docker-host-to-hosts-file.sh /docker-entrypoint.d/
RUN chmod +x /docker-entrypoint.d/99-add-docker-host-to-hosts-file.sh
