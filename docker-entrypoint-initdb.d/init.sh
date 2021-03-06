echo "** Creating default DB and users"
psql -h localhost -U postgres -c "CREATE USER $DB_USER WITH PASSWORD '$DB_PASSWORD';"
psql -h localhost -U postgres -c "CREATE DATABASE $DB_NAME;"
psql -h localhost -U postgres -c "GRANT ALL PRIVILEGES ON DATABASE $DB_NAME TO $DB_USER;"
psql -h localhost -U postgres -c "ALTER USER $DB_USER CREATEDB;"
echo "** Finished creating default DB and users"