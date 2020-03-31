
FROM ubuntu
RUN apt-get update
RUN apt-get install unzip wget nginx -y
COPY index.html /var/www/html/
EXPOSE 80
CMD ["nginx","-g","daemon off;"]

COPY get_shapefiles.sh /
RUN echo "Getting shapefiles..."
RUN chmod +x /get_shapefiles.sh
RUN /get_shapefiles.sh

RUN echo "Copying ACMT Config Files"
COPY 2010ACSColumns.csv /var/www/html
COPY ACSColumns.csv /var/www/html
