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
