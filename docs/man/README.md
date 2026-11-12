# [`simplePipes`](https://github.com/cwendorf/simplePipes/)

## Reference

This section documents the exported pipe operators, including usage, arguments, and return values.

### Basic Pipes

- [Basic Forward Pipe (`%>%`)](./basic_forward.md): Passes the left-hand value as the first argument to the right-hand function.
- [Basic Backward Pipe (`%<%`)](./basic_backward.md): Passes the right-hand value as the first argument to the left-hand function.

### Tee Pipes

- [Tee Forward Pipe (`%T>%`)](./tee_forward.md): Applies the right-hand function for side effects and returns the left-hand value.
- [Tee Backward Pipe (`%<T%`)](./tee_backward.md): Applies the left-hand function for side effects and returns the right-hand value.

### Wye Pipes

- [Wye Forward Pipe (`%Y>%`)](./wye_forward.md): Applies multiple functions to the left-hand value.
- [Wye Backward Pipe (`%<Y%`)](./wye_backward.md): Applies multiple functions to the right-hand value.

### Exposition Pipes

- [Exposition Forward Pipe (`%$>%`)](./exposition_forward.md): Evaluates the right-hand expression within the left-hand data object.
- [Exposition Backward Pipe (`%<$%`)](./exposition_backward.md): Evaluates the left-hand expression within the right-hand data object.

### Assignment Pipe

- [Compound Assignment Pipe (`%<>%`)](./compound_assignment.md): Pipes a variable through a function and reassigns the result.

### Dot Pipes

- [Dot Forward Pipe (`%.>%`)](./dot_forward.md): Makes the left-hand value available as `.` in the right-hand expression.
- [Dot Backward Pipe (`%<.%`)](./dot_backward.md): Makes the right-hand value available as `.` in the left-hand expression.

### Through Pipe

- [Through Forward Pipe (`%.>>%`)](./through_forward.md): Evaluates the right-hand expression with `.` and invisibly returns the original left-hand value.
