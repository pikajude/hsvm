hsvmpath () {
  cd "$(dirname "$0")"
  PW="$(pwd -P)/../bin"
  cd -
  echo "$PW"
}

export PATH="$(hsvmpath):$PATH"
echo "$PATH"
eval "$(hsvm init -)"
