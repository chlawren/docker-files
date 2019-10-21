FROM alpdemo:base

# Install Nginx.
RUN \
apk update && \
apk add nginx && \
rm -rf /var/lib/apt/lists/* && \
adduser -D -g 'www' www && \
chown -R www:www /var/lib/nginx
 
COPY nginx.conf /etc/nginx/nginx.conf

# Define mountable directories.
VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html"]

# Define working directory.
WORKDIR /usr/src/app

# Expose ports.
EXPOSE 80
EXPOSE 443

# Command

CMD ["nginx", "-g", "daemon off;"]
