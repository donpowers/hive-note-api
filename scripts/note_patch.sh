// update a note
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/notes/1"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiVlMDJjNTZhN2I4MzJiNTRlMGNkNjc4NGMzY2E5OGViMgY6BkVG--c24fc16c6d52ea811ba88c381ab503b3ec2c1576" \
  --data '{
    "note": {
      "task_status": "In Progress"
    }
  }'

// Get all notes
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/notes"
curl "${API}${URL_PATH}/$ID" \
  --include \
  --request GET \
  --header "Authorization: Token token=BAhJIiVhN2MyNDk1MDUwMmEzZmE1NzNkNmZlNzRiNTNhMzRmMwY6BkVG--096f95db9a6660558f38d319b1f9395cfa660b3b"

// Get my notes
  API="${API_ORIGIN:-http://localhost:4741}"
  URL_PATH="/my-notes"
  curl "${API}${URL_PATH}/$ID" \
    --include \
    --request GET \
    --header "Authorization: Token token=BAhJIiVhMWYwZjVlMzJkNWRlNTFmZDgwY2ExMzA4NjBhMmRkYgY6BkVG--e3077a649451709536c21747b1da77e5b6838ca4"

// DELETE WITH AUTH
curl -X "DELETE" http://localhost:4741/notes/3 \
--include \
--header "Authorization: Token token=BAhJIiVlMDJjNTZhN2I4MzJiNTRlMGNkNjc4NGMzY2E5OGViMgY6BkVG--c24fc16c6d52ea811ba88c381ab503b3ec2c1576"
