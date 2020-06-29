#!/bin/bash

dn=`curl https://www.metabase.com/start/jar.html |grep "Download Metabase"| grep -shoP 'http.*?["]' | sed 's/.$//'`

echo "Descargando Metabase: $dn..."

cd metabase

wget $dn

cd ..
