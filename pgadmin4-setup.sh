#!/bin/bash

# Path to pgAdmin4 installation
PGADMIN_DIR="/usr/pgadmin4"
VENV_DIR="$PGADMIN_DIR/venv"
REQ_FILE="$PGADMIN_DIR/web/requirements.txt"
# The other versions: https://ftp.postgresql.org/pub/pgadmin/pgadmin4/
WHEEL_URL="https://ftp.postgresql.org/pub/pgadmin/pgadmin4/v9.2/pip/pgadmin4-9.2-py3-none-any.whl"

echo "Removing old virtualenv (if exists)..."
sudo rm -rf "$VENV_DIR"

echo "Creating new virtualenv with Python3..."
sudo python3 -m venv "$VENV_DIR"

echo "Activating virutalenv and installing dependencies..."
source "$VENV_DIR/bin/activate"

# Check if requirements.txt exists
if [ -f "$REQ_FILE" ]; then
    echo "Installing packages from requirements.txt..."
    "$VENV_DIR/bin/pip" install -r "$REQ_FILE"
else
    echo "requirements.txt not found! Installing .whl packages manually..."
    sudo "$VENV_DIR/bin/pip" install "$WHEEL_URL" 
fi

deactivate

echo "virtualenv created and packages installed successfully."
echo "You can now launch pgAdmin4!"
