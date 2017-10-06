#!/bin/bash

# API="${API_ORIGIN:-https://solopreneur.herokuapp.com/}"
API="${API_ORIGIN:-https://localhost:4741/}"
URL_PATH="/events/"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"

echo

# DELETE /events/:id(.:format)          events#destroy
