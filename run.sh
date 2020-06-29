#!/bin/bash
export MB_DB_TYPE=h2
export MB_DB_FILE=/app/database/metabase.db.mv.db
cd /app
java -jar metabase.jar 
