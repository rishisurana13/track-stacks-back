#!/bin/bash

curl "http://localhost:4741/meals" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "meal": {
      "meal": "'"${MEAL}"'",
      "date": "'"${DATE}"'"




    }
  }'

echo
