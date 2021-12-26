datatype Dinheiro = 
    Real of real 
    | Centavos of int 
    | Pessoa_Dinheiro of string * real;

fun amount (Centavos c) = c
    | amount (Real r) = trunc (r * 100.00)
    | amount (Pessoa_Dinheiro(_, v)) = trunc (v * 100.00);

amount (Real 2.0);
amount (Centavos 2);
amount (Pessoa_Dinheiro("Gene", 2.5));
