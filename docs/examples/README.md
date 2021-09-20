## Examples for simplePipes

### Overview

**simplePipes** is an R package that implements a variety of simple pipe operators. For most varieties, both forward and backward versions are available. All examples first use standard R syntax, followed by piped versions of the same example.

### Basic Pipes

Basic pipes are used for chaining (rather than nesting) commands. They assume that the piped values are the first and only arguments passed to the next command.

- [*basicPipes*](./basicPipes.md) - Examples of forward and backward basic pipes

### Dot Pipes

Dot pipes also chain commands but expand on basic pipes by allowing the piped values to be placed anywhere in the next command.

- [*dotPipes*](./dotPipes.md) - Examples of forward and backward dot pipes

### Tee Pipes

Tee pipes also involve chaining commands but are used when an intermediate command produces output (such as a plot). The intermediate command also acts as a flow-through to a third command in the chain.

- [*teePipes*](./teePipes.md) - Examples of forward and backward tee pipes

### Wye Pipes

Wye pipes chain a first command to two (or more) subsequent commands simultaneously. They take the place of multiple pipes.

- [*wyePipes*](./wyePipes.md) - Examples of forward and backward wye pipes

### Exposition Pipes

Exposition pipes indicate a data set to be used for other commands (or pipes).

- [*expositionPipes*](./expositionPipes.md) - Examples of forward and backward exposition pipes

### Assignment Pipes

Assignment pipes both chain commands and redefine the objects in the chain.

- [*assignmentPipes*](./assignmentPipes.md) - Examples of compound assignment pipes
