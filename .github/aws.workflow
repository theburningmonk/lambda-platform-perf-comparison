name: AWS Benchmark 
on: 
  push:
    paths:
      - aws/*

jobs:
  package:
    name: Go 1.x
    runs-on: ubuntu-latest
    steps:
      - name: package Go 1.x
        run: make package
        env:
          - RUNTIMES aws-go1.x
}