#!/bin/awk -f

{
    printf("%s ", "input = (")
    split($0, chars, "")
    for (i = 1; i <= length($0); i++) {
        printf("'%s' ", chars[i])
    }
    printf("%s\n", ")")
}
