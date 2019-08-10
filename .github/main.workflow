workflow "AWS Lambda" {
  resolves = ["C# 2.1", "Go 1.x"]
  on = "push"
}

action "Go 1.x" {
  uses = "docker://flemay/musketeers"
  runs = "make"
  args = "RUNTIMES=aws-go1.x make build"
}

workflow "Google Functions" {
  on = "push"
}

action "C# 2.1" {
  uses = "docker://flemay/musketeers"
  args = "RUNTIMES=aws-csharp2.1 make build"
}
