#include <stdio.h>

int main(){
    int i = 1;
    while (i <= 10) {i++;}    // ← loop ends here with the semicolon!
        printf("\nThe value of i is %d", i );   // ← these are NOT inside the loop
        printf("\nEOJ\n");                       // ← neither is this
    }