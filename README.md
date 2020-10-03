# branfuck

This is an implementation of brainfuck in rc(1).
The details of the implementation are in the source code, it is thoroughly commented.
## Artistic considerations
rc cannot take input other than via the commandline and environment. As of such, the input program is expected to be provided in the $input variable, as an array with each element containing an instruction.
A script, `convert.awk`, is provided to convert valid brainfuck programs into an rc statement that sets up the environment as branfuck expects. It takes a program on standard input.

rc is unable to reliably implement all required operations for brainfuck. It is best to think of branfuck as an implementation of P'', as a result, as it only implements '+-<>[]'.
The builtins used are `shift`, `~`, and `eval`. Everything else is a function, other than `echo`. However, `echo` is not used other than to print the state of the tape once execution is complete. 
The printing of the tape only occurs if `branfuck` is invoked with the flag `-d`, so it is entirely optional.
If one wishes to avoid the use of `echo` within the body of the program, you can simply evalute the program using `. ./branfuck.rc`, and then output the contents of the variable $tape yourself.
