#!/bin/bash

# API endpoint URL
API_URL="https://api.example.com/endpoint"

# Data to send in the POST request (in JSON format)
DATA='{
  "key1": "value1",
  "key2": "value2"
}'

# Optional: API authentication token (if needed)
AUTH_TOKEN="your_auth_token_here"

# Headers (such as Content-Type, Authorization, etc.)
HEADERS=(
  "-H" "Content-Type: application/json"
  "-H" "Authorization: Bearer $AUTH_TOKEN"
)

# Make the POST request using curl
RESPONSE=$(curl -s -X POST "${HEADERS[@]}" -d "$DATA" "$API_URL")

# Print the response
echo "Response: $RESPONSE"
