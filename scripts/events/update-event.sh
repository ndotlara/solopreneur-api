#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/events/"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "event": {
      "event_name": "'"${NAME}"'",
      "date": "'"${DATE}"'",
      "time": "'"${TIME}"'",
      "street_address": "'"${STADDRS}"'",
      "city": "'"${CITY}"'",
      "state": "'"${STATE}"'",
      "zip_code": "'"${ZIP}"'",
      "description": "'"${DESC}"'",
      "user_id": "'"${USERID}"'"
    }
  }'

echo

# PATCH  /events/:id(.:format)          events#update
