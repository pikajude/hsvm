@test "lists all the commands" {
  [ $(expr "$(ls libexec | wc -l | tr -d ' ')" - 1) = "$(hsvm commands | wc -l | tr -d ' ')" ]
}
