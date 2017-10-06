#!/bin/bash

API="${API_ORIGIN:-https://solopreneur.herokuapp.com/}"
URL_PATH="/comments/"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \

echo

# GET    /comments/:id(.:format)        comments#show
