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
    fun fact 0 = 1
        | fact 1 = 1
        | fact n = n * fact(n - 1)
    
    fun pow (_, 0) = 1
        | pow (n, 1) = n
        | pow (n, k) = n * pow(n, k - 1)
    
    fun double n = n * 2
end;
