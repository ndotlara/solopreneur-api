#!/bin/bash

API="${API_ORIGIN:-https://solopreneur.herokuapp.com/}"
URL_PATH="/comments"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \

echo

# GET    /comments(.:format)            comments#index
