#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/events/"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \

echo

# GET    /events/:id(.:format)          events#show
