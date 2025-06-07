#!/bin/bash

# This script generates client code from the OpenAPI specification

# Set variables
BACKEND_URL="http://localhost:3000/api-docs-json"
OUTPUT_DIR="../openapi-demo-frontend/packages/api_client"
MOBILE_CONFIG_FILE="../openapi-demo-frontend/openapi.yaml"

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Check if the backend is running
echo "Checking if backend is running..."
if ! curl --output /dev/null --silent --head --fail "$BACKEND_URL"; then
  echo "Error: Backend is not running. Please start the backend first."
  echo "Run: cd ../openapi-demo-backend && npm run start:dev"
  exit 1
fi

# Check if openapi-generator-cli is installed
if ! command -v openapi-generator-cli &> /dev/null; then
  echo "openapi-generator-cli not found. Installing..."
  npm install -g @openapitools/openapi-generator-cli
fi

echo "Cleaning up existing mobile client code..."
if [ -d "$MOBILE_CLIENT_DIR" ]; then
    rm -rf "$MOBILE_CLIENT_DIR"
fi

# Generate client code directly from URL
echo "Generating client code from API URL..."
openapi-generator-cli generate \
  -i "$BACKEND_URL" \
  -g dart-dio \
  -o "$OUTPUT_DIR" \
   -c "$MOBILE_CONFIG_FILE" 

echo "Running build_runner in mobile client directory..."
cd "$OUTPUT_DIR" && fvm flutter pub get && fvm dart run build_runner build --delete-conflicting-outputs

echo "Client code generation complete!"
echo "Generated code is available at: $OUTPUT_DIR"