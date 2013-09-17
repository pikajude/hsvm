hsvmpath () {
  cd "$(dirname "$0")"
  PW="$(pwd -P)/../bin"
  cd -
  echo "$PW"
}

export PATH="$(hsvmpath):$PATH"
eval "$(hsvm init -)"
