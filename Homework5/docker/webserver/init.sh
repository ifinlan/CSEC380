
#!/bin/bash

if [ -n "$MYSQL_PASSWORD" ] ; then

	TEMP_FILE='/tmp/mysql-first-time.sql'
	cat > "$TEMP_FILE" <<-EOSQL
		CREATE USER 'user'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}' ;
		GRANT ALL ON armbook*.* TO 'root'@'%' WITH GRANT OPTION ;
		FLUSH PRIVILEGES ;
	EOSQL

	# set this as an init-file to execute on startup
	set -- "$@" --init-file="$TEMP_FILE"
fi

# execute the command supplied
exec "$@"