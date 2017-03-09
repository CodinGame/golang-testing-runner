# go-godep-runner

# What it Does

This is a go runner for a CodinGame course. It will attempt to launch a `godep restore` in any directory it finds a Godeps folder in.

# How to Use

In order to use this runner in your project, edit the `codingame.yml` file and add the following lines to your project:

    runner:
      name: codingame/golang-godep-runner
      version: 1.1.0-1.8


## Example

In this example, the student is asked to write a method `UpperCase()` (file `upper/upper.go`):

```golang
package upper
import "strings"
func UpperCase(s string) string {
	return strings.ToUpper(s)
}
```

In order to test the answer, the following unit test is created (file `main_test.go`):

```golang
package main
import "testing"
import "./upper"
func TestUpperCase(t *testing.T) {
  var s string
  s = upper.UpperCase("hello")
  if s != "HELLO" {
    t.Error("Expected HELLO, got ", s)
  }
}
```

In the lesson, the unit test can be called using:

`@[Test unittest: uppercase]({"stubs":["upper/upper.go"], "command":"go test -run UpperCase"})`
