workflow "AWS Lambda" {
  resolves = [
    "Go 1.x",
    "C# 2.1",
  ]
  on = "push"
}

action "Go 1.x" {
  uses = "docker://flemay/musketeers"
  runs = "make"
  args = "package"
  env = {
    RUNTIMES = "aws-go1.x "
  }
}

action "C# 2.1" {
  uses = "docker://flemay/musketeers"
  args = " make package"
  env = {
    RUNTIMES = "aws-csharp2.1"
  }
}
