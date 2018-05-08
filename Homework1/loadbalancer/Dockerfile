FROM nginx

# Setup cache
RUN mkdir -p /var/lib/nginx/cache
RUN chown www-data /var/lib/nginx/cache
RUN chmod 700 /var/lib/nginx/cache

COPY ./nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
