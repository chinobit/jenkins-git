FROM wordpress
#ARG WORDPRESS_DB_NAME
#ENV WORDPRESS_DB_NAME shabitdb
#COPY --chown=www-data:www-data wp-config.php /var/www/html
# COPY wp-config.php /var/www/html

# ADD default-constants.php /var/www/html/wp-includes/default-constants.php    # 256MB Limit
