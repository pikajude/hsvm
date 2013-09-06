if [[ ! -o interactive ]]; then
  return
fi

compctl -K _hsvm hsvm

_hsvm() {
  local words completions
  read -cA words

  if [ "${#words}" -eq 2 ]; then
    completions="$(hsvm commands)"
  else
    completions="$(hsvm completions ${words[2,-1]})"
  fi

  reply=("${(ps:\n:)completions}")
}
