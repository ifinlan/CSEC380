FROM nginx
RUN mkdir /tmp/cache
RUN chown www-data /tmp/cache
RUN chmod 700 /tmp/cache
RUN rm /etc/nginx/conf.d/*
COPY nginx.conf /etc/nginx/conf.d/
