function gd {
  local parent=$(dirname "$1")
  local name=$(basename "$1")
  local owner=$(basename "$parent")
  local nwo="$owner/$name"
  local dir="$SRCPATH/$nwo"

  ([ -e "$dir" ] || git clone "https://github.com/$nwo" "$dir") && cd "$dir"
}

function gda {
  gd $1 && atom .
}
