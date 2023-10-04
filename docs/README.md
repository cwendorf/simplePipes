## Tutorials for simplePipes

### Overview

**simplePipes** is an R package that implements a variety of simple pipe operators. For most varieties, both forward and backward versions are available. All tutorials first use standard R syntax, followed by piped versions.

### The Simplest Pipes

The simplest pipes implement piping, but they assume that the piped values are the first and only arguments passed to the next command. They are useful for very simple analyses and are important for educational purposes, but may have limit application.

- [*basicPipes*](./basicPipes.md) - Basic pipes are used for chaining (rather than nesting) commands. They assume that the piped values are the first and only arguments passed to the next command.

- [*teePipes*](./teePipes.md) - Tee pipes also involve chaining commands but are used when an intermediate command produces output (such as a plot). The intermediate command also acts as a flow-through to a third command in the chain.

- [*wyePipes*](./wyePipes.md) - Wye pipes chain a first command to two (or more) subsequent commands simultaneously. They take the place of multiple pipes.

### The Data Manipulation Pipes

These pipes are useful for data selection and asssignment. In particular, they are helpful for replacing common data manipulation tasks with infix operators.

- [*expositionPipes*](./expositionPipes.md) - Exposition pipes indicate a data set to be used for other commands (or pipes), replacing the need for a `with` command.

- [*assignmentPipes*](./assignmentPipes.md) - Compound assignment pipes both chain commands and redefine the objects in the chain.

### The Functional Dot Pipes

The most functional and flexible pipes use a placeholder (the dot) to move data from one section of the pipe to the next. 

- [*dotPipes*](./dotPipes.md) - Simple dot pipes also chain commands but expand on basic pipes by allowing the piped values to be placed anywhere in the next command in the chain. They expand the functionality of both basic and wye pipes.

- [*throughPipes*](./throughPipes.md) - Through pipes chain a series of commands, allowing the first piped values to be used as input in multiple subsequent commands (rather than just the next command in the chain). They expand the functionality of tee pipes.
