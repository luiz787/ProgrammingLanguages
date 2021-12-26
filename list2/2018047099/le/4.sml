datatype UnOp = Not;
datatype BinOp = Add | Sub | Mul | Gt | Eq | Or;
datatype Sexpr = IConst of int
  | Op1 of UnOp * Sexpr
  | Op2 of BinOp * Sexpr * Sexpr;

fun simplify (Op2 (Add, e, IConst 0)) = simplify e
  | simplify (Op2 (Add, IConst 0, e)) = simplify e
  | simplify (Op2 (Sub, e, IConst 0)) = simplify e
  | simplify (Op2 (Mul, e, IConst 1)) = simplify e
  | simplify (Op2 (Mul, IConst 1, e)) = simplify e
  | simplify (Op2 (Mul, _, IConst 0)) = IConst 0
  | simplify (Op2 (Mul, IConst 0, _)) = IConst 0
  | simplify (Op2 (Sub, e1, e2)) = if e1 = e2 then IConst 0 else Op2 (Sub, e1, e2)
  | simplify (Op2 (Or, e1, e2)) = if e1 = e2 then e1 else Op2 (Sub, e1, e2)
  | simplify (Op1 (Not (Op1 (Not e)))) = simplify e
  | simplify (Op1 (U, e)) = let val s = simplify e in if s = e then (Op1 (U, s)) else simplify (Op1 (U, s)) end
  | simplify (Op2 (B, e1, e2)) = let val se1 = simplify e1 val se2 = simplify e2 in if se1 = e1 andalso se2 = e2 then Op2 (B, e1, e2) else simplify (Op2 (B, se1, se2)) end
  | simplify (e) = e;
