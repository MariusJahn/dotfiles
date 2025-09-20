# Go up N directories
up() {
  local d=""
  local count=$1
  if [[ -z "$count" ]]; then count=1; fi
  for ((i=1; i<=count; i++)); do
    d="../$d"
  done
  cd "$d" || return
}

