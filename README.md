# branfuck

This is an implementation of brainfuck in rc(1).
The details of the implementation are in the source code, it is thoroughly commented.
## Artistic considerations
- `rc` cannot take input other than via the commandline and environment. 
- As of such, the input program is expected to be provided in the $input variable, as an array with each element containing an instruction.
- A script, `convert.awk`, is provided to convert valid brainfuck programs into an rc statement that sets up the environment as branfuck expects. It recieves a program from standard input.
- As `rc` is unable to produce output nor take input, it is unable to implement the instructions `.,`.
- As of such, it is best to think of branfuck as an implementation of P'', as it only implements `+-<>[]`.
- The builtins used are `shift`, `~`, and `eval`. No external binaries are used, other than `echo`, which outputs the contents of the tape if the flag `-d` is given. 
- If you want to avoid the use of `echo` within the body of the program, you can simply evalute the program using `. ./branfuck.rc`, and then output the contents of the variable `$tape` yourself.
