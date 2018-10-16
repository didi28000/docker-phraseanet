#!/bin/bash
set -e

echo "Installing ..."
bin/setup system:install \
    --email="$ADMIN_EMAIL" \
    --password="$ADMIN_PASSWORD" \
    --db-host="$DB_HOST" \
    --db-user="$DB_USER" \
    --db-password="$DB_PASSWORD" \
    --db-template="$DB_TEMPLATE" \
    --databox="$DB_DATA_NAME" \
    --appbox="$DB_APP_NAME" \
    --server-name="$WEB_HOST" \
    --yes

echo "Installed"
chown -R www-data:www-data .
chmod -R 0777 datas

$@
