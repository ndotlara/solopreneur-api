#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/users"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "users": {
      "first_name": "'"${FIRST_NAME}"'",
      "last_name": "'"${LAST_NAME}"'",
      "company": "'"${COMPANY}"'",
      "title": "'"${TITLE}"'",
      "city": "'"${CITY}"'",
      "state": "'"${STATE}"'",
      "bio": "'"${BIO}"'",
      "interests": "'"${INTERESTS}"'"
    }
  }'

echo

# POST   /users(.:format)               users#create
