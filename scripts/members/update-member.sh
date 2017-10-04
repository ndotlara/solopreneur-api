#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/users/"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "users": {
      "first_name": "'"${FIRST}"'",
      "last_name": "'"${LAST}"'",
      "company": "'"${CO}"'",
      "title": "'"${TITLE}"'",
      "city": "'"${CITY}"'",
      "state": "'"${STATE}"'",
      "bio": "'"${BIO}"'",
      "interests": "'"${INT}"'"
    }
  }'

echo

# PATCH  /users/:id(.:format)           users#update
