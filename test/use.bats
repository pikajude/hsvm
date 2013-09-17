load test_helper

@test "sets up symlinks correctly" {
  hsvm use 7.6.3-x86_64
  hash ghc 2>/dev/null
  [ "$(ghc --version | rev | cut -d' ' -f1 | rev)" = "7.6.3" ]
}
