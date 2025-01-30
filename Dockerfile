FROM docker.io/library/mysql:8.0

# Environment variables
ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=mydb
ENV MYSQL_USER=user
ENV MYSQL_PASSWORD=userpassword

# Expose MySQL port
EXPOSE 3306

# Add healthcheck
HEALTHCHECK --interval=30s --timeout=3s \
  CMD mysqladmin ping -h localhost -u root -p${MYSQL_ROOT_PASSWORD} || exit 1

# The entrypoint and cmd are inherited from the base image