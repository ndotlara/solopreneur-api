#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/comments/"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "comment": {
      "user_id": "'"${USERID}"'",
      "event_id": "'"${EVENTID}"'",
      "comment_body": "'"${COMMENT}"'"
    }
  }'

echo

# PATCH  /comments/:id(.:format)        comments#update
