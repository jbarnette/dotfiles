# show friendly current directory or nwo @ branch for repos
function set-terminal-title {
  local branch
  local title=$(pwd)

  title=${title#$SRCPATH/}
  title=${title/${HOME}/\~}

  if branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null); then
    title="$title @ $branch"
  fi

  echo -ne "\033]2;$title\007"
}

# cd to a github repo
function gd {
  local parent=$(dirname "$1")
  local name=$(basename "$1")
  local owner=$(basename "$parent")
  local nwo="$owner/$name"
  local dir="$SRCPATH/$nwo"

  [ -e "$dir" ] || git clone "https://github.com/$nwo" "$dir"

  cd "$dir"
}

function gda {
  gd $1
  atom
}

function gdag {
  gda $1
  github
}
