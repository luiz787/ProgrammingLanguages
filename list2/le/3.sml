datatype perimetro = RConst of real
  | PQuadrado of perimetro
  | PRetangulo of perimetro * perimetro
  | PCirculo of perimetro
  | PTriangulo of perimetro * perimetro * perimetro;

fun eval (RConst(v)) = v
  | eval (PQuadrado(l)) = 4.0 * eval(l)
  | eval (PRetangulo(l1, l2)) = 2.0 * (eval(l1) + eval(l2))
  | eval (PCirculo(r)) = 2.0 * 3.14 * eval(r)
  | eval (PTriangulo(l1,l2,l3)) = eval(l1) + eval(l2) + eval(l3);
