FROM httpd
WORKDIR .
COPY index.html /usr/local/apache2/htdocs/
