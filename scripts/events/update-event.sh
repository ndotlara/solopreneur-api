#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/events/"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "event": {
      "event_name": "'"${EVENT_NAME}"'",
      "date": "'"${DATE}"'",
      "time": "'"${TIME}"'",
      "street_address": "'"${STREET_ADDRESS}"'",
      "city": "'"${CITY}"'",
      "state": "'"${STATE}"'",
      "zip_code": "'"${ZIP_CODE}"'",
      "description": "'"${DESCRIPTION}"'"
    }
  }'

echo

# PATCH  /events/:id(.:format)          events#update
