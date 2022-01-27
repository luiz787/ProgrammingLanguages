exception BadArgument;
exception UnknownOperation;

signature Math =
sig
    val fact : int -> int
    val halfPi : real
    val pow : (int * int) -> int
    val double : int -> int
end;

structure MyMathLib :> Math =
struct
    val halfPi = Math.pi / 2.0
    fun fact n =
        if n < 0
        then
            raise BadArgument
        else if n = 0
        then
            1
        else
            n * fact(n - 1)
    
    fun pow (a, n) =
        if a < 0 orelse n < 0
        then
            raise BadArgument
        else if n = 0
        then
            1
        else if n = 1
        then
            a
        else
            a * pow(a, n - 1)
    
    fun double n =
        if n < 0
        then
            raise BadArgument
        else
            n * 2
end;

fun performCalculation(value: int, operation: string) =
    if operation = "pow"
    then
        MyMathLib.pow(value, value)
    else if operation = "fact"
    then
        MyMathLib.fact(value)
    else if operation = "double"
    then
        MyMathLib.double(value)
    else
        raise UnknownOperation

fun useMyMathLib (value: int, operation: string) =
    let val ans = performCalculation(value, operation)
    in
        print(Int.toString(ans) ^ "\n")
    end
    handle UnknownOperation => print("Operação não suportada\n")
        | BadArgument => print("Não posso lidar com números negativos\n");
