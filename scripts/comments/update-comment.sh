#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/comments/"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "comment": {
      "comment_body": "'"${COMMENT_BODY}"'",
      "user_id": "'"${USER_ID}"'",
      "event_id": "'"${EVENT_ID}"'"
    }
  }'

echo

# PATCH  /comments/:id(.:format)        comments#update
