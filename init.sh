#!/bin/bash

# Start SQL Server
/opt/mssql/bin/sqlservr &

# Wait for SQL Server to be ready
sleep 30

# Execute SQL scripts
for file in /usr/src/sql_scripts/ddl/*.sql; do
    echo "Executing $file..."
    /opt/mssql-tools18/bin/sqlcmd -S localhost -U sa -P password1234! -C -i "$file" 2>&1 | tee -a /tmp/sql.log
done

for file in /usr/src/sql_scripts/data/*.sql; do
    echo "Executing $file..."
    /opt/mssql-tools18/bin/sqlcmd -S localhost -U sa -P password1234! -C -i "$file" 2>&1 | tee -a /tmp/sql.log
done

# Keep container running
tail -f /dev/null 