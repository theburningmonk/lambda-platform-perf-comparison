workflow "New workflow" {
  on = "push"
  resolves = ["test"]
}

action "test" {
  uses = "docker://flemay/musketeers"
  runs = "make"
}
