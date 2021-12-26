fun allTrue [] = false
    | allTrue (x::[]) = x
    | allTrue (x::xs) = if x = false then false else allTrue(xs);

allTrue [true, true, false, true];
allTrue [true, true, true];
