#!/bin/bash
set -e

# Define paths
SECRET_DIR="./secret"
CORE_KEY_DIR="$SECRET_DIR/core"
REGISTRY_KEY_DIR="$SECRET_DIR/registry"

# Create directories
echo "Creating secret directories..."
mkdir -p "$CORE_KEY_DIR"
mkdir -p "$REGISTRY_KEY_DIR"

# Generate Private Key for Core if not exists
if [ ! -f "$CORE_KEY_DIR/private_key.pem" ]; then
    echo "Generating Core private key..."
    openssl genrsa -out "$CORE_KEY_DIR/private_key.pem" 4096
else
    echo "Core private key already exists."
fi

# Generate Root Certificate for Registry if not exists
if [ ! -f "$REGISTRY_KEY_DIR/root.crt" ]; then
    echo "Generating Registry root certificate..."
    openssl req -new -x509 \
        -key "$CORE_KEY_DIR/private_key.pem" \
        -out "$REGISTRY_KEY_DIR/root.crt" \
        -days 3650 \
        -subj "/C=US/ST=State/L=City/O=Harbor/CN=harbor-token-issuer"
else
    echo "Registry root certificate already exists."
fi

echo "Setup complete! You can now run 'docker compose up -d'"
