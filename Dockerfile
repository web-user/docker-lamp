FROM php:7.1.2-apache 
RUN docker-php-ext-install mysqli
#upload
RUN echo "file_uploads = On\n" \
         "memory_limit = 500M\n" \
         "upload_max_filesize = 500M\n" \
         > /usr/local/etc/php/conf.d/uploads.ini