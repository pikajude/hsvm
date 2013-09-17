load test_helper

@test "can use GHCs" {
  hsvm use 7.6.3-x86_64
  hash ghc 2>/dev/null
  [ "$(ghc --version | rev | cut -d' ' -f1 | rev)" = "7.6.3" ]
}

@test "can default architecture if none is specified" {
  test -d ~/.hsvm/ghcs/7.6.3-i386 && hsvm rm 7.6.3-i386
  hsvm use 7.6.3
}

@test "can't default if two architectures are present" {
  test -d ~/.hsvm/ghcs/7.6.3-i386 || hsvm install 7.6.3 --32-bit
  run hsvm use 7.6.3
  [ "$status" -eq 1 ]
  [ "$output" = "hsvm: multiple architectures present for version \`7.6.3'; try 7.6.3-i386 or 7.6.3-x86_64" ]
}
