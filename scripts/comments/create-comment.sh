#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/comments"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
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

# POST   /comments(.:format)            comments#create
