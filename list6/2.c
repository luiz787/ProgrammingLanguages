#include <stdio.h>

#define MY_MACRO(A, B, C)               \
{                                       \
    if (A > C) {                        \
        printf("A is greater than C\n");\
    } else if (B > C) {                 \
        printf("B is greater than C\n");\
    } else if (A == C) {                \
        printf("A is equal to C\n");    \
    } else if (B == C) {                \
        printf("B is equal to C\n");    \
    }                                   \
}                                       \

int getC() {
    printf("getC called\n");
    return 3;
}

int main() {
    int a = 2;
    int b = 3;
    
    // Como apenas a última cláusula else if será
    // satisfeita, getC será chamada 4 vezes
    MY_MACRO(a, b, getC());

    return 0;
}
