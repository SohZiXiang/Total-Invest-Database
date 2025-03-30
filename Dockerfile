FROM mcr.microsoft.com/mssql/server:2022-latest

# Create a directory for SQL scripts
USER root
RUN mkdir -p /usr/src/sql_scripts/ddl
RUN mkdir -p /usr/src/sql_scripts/data

# Install SQL Server tools
RUN apt-get update && apt-get install -y curl gnupg2
RUN curl https://packages.microsoft.com/keys/microsoft.asc | tee /etc/apt/trusted.gpg.d/microsoft.asc
RUN apt-get update && apt-get install mssql-tools18

# Copy all SQL scripts and initialization script
COPY sql_scripts/data/*.sql /usr/src/sql_scripts/data
COPY sql_scripts/ddl/*.sql /usr/src/sql_scripts/ddl
COPY init.sh /usr/src/init.sh

# Set environment variables
ENV ACCEPT_EULA=Y
ENV MSSQL_SA_PASSWORD=password1234!

# Expose the default SQL Server port
EXPOSE 1433


# Make the initialization script executable
RUN chmod +x /usr/src/init.sh

# Create log directory
RUN mkdir -p /tmp

# Convert Windows Script into Unix
RUN sed -i -e 's/\r$//' /usr/src/init.sh

# Run SQL Server
CMD /usr/src/init.sh > /tmp/init.log 2>&1