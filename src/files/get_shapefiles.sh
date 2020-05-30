#!/bin/sh
cd /usr/share/nginx/html

echo "hello" > myhello.html

wget https://www2.census.gov/geo/tiger/GENZ2017/shp/cb_2017_us_county_500k.zip  --mirror --reject=html
cd /usr/share/nginx/html/www2.census.gov/geo/tiger/GENZ2017/shp/
unzip cb_2017_us_county_500k.zip
cp cb_2017_us_county_500k.* /usr/share/nginx/html
cd /usr/share/nginx/html
chmod +r cb_2017_us_county_500k.*

wget https://opendata.arcgis.com/datasets/23178a639bdc4d658816b3ea8ee6c3ae_0.zip --reject=html
unzip 23178a639bdc4d658816b3ea8ee6c3ae_0.zip


# wget ftp://newftp.epa.gov/EPADataCommons/OP/WalkabilityIndex.zip
# cd /gisdata/newftp.epa.gov/EPADataCommons/OP/
# unzip WalkabilityIndex.zip

