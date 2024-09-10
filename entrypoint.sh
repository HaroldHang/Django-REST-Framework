#!/bin/sh

# Exit immediately if a command exits with a non-zero status.
set -e

# Run Django migrations
echo "Running migrations..."
python manage.py makemigrations
python manage.py migrate

# Start the Django server
echo "Starting server..."
exec "$@"