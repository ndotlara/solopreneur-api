#!/bin/bash

API="${API_ORIGIN:-https://solopreneur.herokuapp.com/}"
URL_PATH="/comments/"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo

# DELETE /comments/:id(.:format)        comments#destroy
