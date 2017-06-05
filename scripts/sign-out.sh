#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/sign-out"
ID=1
TOKEN=BAhJIiU5YWJhZTRiNjU3ZDhhZjM2ZmVjMWRlMjU0Zjc5MjA1MgY6BkVG--7f2a445da892be87953c19bd496a2f23937730be
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
