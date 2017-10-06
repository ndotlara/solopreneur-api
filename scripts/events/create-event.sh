#!/bin/bash

# API="${API_ORIGIN:-https://solopreneur.herokuapp.com/}"
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/events"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
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

# POST   /events(.:format)              events#create
