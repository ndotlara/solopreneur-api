#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/comments/"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \

echo

# GET    /comments/:id(.:format)        comments#show
