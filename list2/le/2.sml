datatype area = RConst of real
  | AQuadrado of area
  | ARetangulo of area * area
  | ACirculo of area;

fun eval (RConst(v)) = v
  | eval (AQuadrado(a)) = eval(a) * eval(a)
  | eval (ARetangulo(a1, a2)) = eval(a1) * eval(a2)
  | eval (ACirculo(a)) = eval(a) * eval(a) * 3.14;
