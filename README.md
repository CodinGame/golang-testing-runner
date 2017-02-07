# go-builder
This is a simple go runner for a CodinGame course. It will run the command "go test" in the root directory and the result will be sent back to CodinGame.

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

`@[Test unittest: uppercase]({"stubs":["upper/upper.go"], "command":"UpperCase"})`
