
#!/usr/bin/env bash

set -o errexit

# Install Python dependencies
pip install -r requirements.txt

# Build Tailwind CSS
python manage.py tailwind build

# Collect static files
python manage.py collectstatic --no-input

# Apply database migrations
python manage.py migrate
