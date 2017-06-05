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
      "hive_name": "Hive Two",
      "observation_date": "2017-06-05",
      "observe": "test the note feature",
      "task": "remove drone brood222",
      "task_due_date": "2017-07-05",
      "task_status": "Done"
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
    --header "Authorization: Token token=BAhJIiUyNmEzOGQ3ODVhNzMyN2I2ZTJkZmNmZDVkYWU4ZDE4ZQY6BkVG--c161678599d17b2a350ee5c49d599ba49c4fde59"

// DELETE WITH AUTH
curl -X "DELETE" http://localhost:4741/notes/3 \
--include \
--header "Authorization: Token token=BAhJIiVlMDJjNTZhN2I4MzJiNTRlMGNkNjc4NGMzY2E5OGViMgY6BkVG--c24fc16c6d52ea811ba88c381ab503b3ec2c1576"
