datatype expr = IConst of int 
  | Plus of expr * expr
  | Minus of expr * expr
  | Multi of expr * expr
  | Div of expr * expr
  | Max of expr * expr
  | Min of expr * expr
  | Eq of expr * expr
  | Gt of expr * expr;

fun eval (IConst i) = i
  | eval (Plus(e1,e2)) = (eval e1) + (eval e2)
  | eval (Minus(e1, e2)) = (eval e1) - (eval e2)
  | eval (Multi(e1, e2)) = (eval e1) * (eval e2)
  | eval (Div(_, IConst(0))) = 0
  | eval (Div(e1,e2)) = let val res_e1 = (eval e1) val res_e2 = (eval e2)
    in if (res_e2 = 0) then 0 else res_e1 div res_e2 end
  | eval (Max(e1,e2)) = let val res_e1 = eval(e1) val res_e2 = eval(e2)
    in if res_e1 > res_e2 then res_e1 else res_e2 end
  | eval (Min(e1, e2)) = let val res_e1 = eval(e1) val res_e2 = eval(e2)
    in if res_e1 < res_e2 then res_e1 else res_e2 end
  | eval (Eq(e1, e2)) = if eval(e1) = eval(e2) then 1 else 0
  | eval (Gt(e1, e2)) = if eval(e1) > eval(e2) then 1 else 0;
