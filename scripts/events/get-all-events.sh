#!/bin/bash

API="${API_ORIGIN:-https://solopreneur.herokuapp.com/}"
URL_PATH="/events"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \

echo

# GET    /events(.:format)              events#index
