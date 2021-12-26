fun max [] = 0
    | max (x::xs) =
        let val m = max xs in if x >= m then x else m end;

max [2, 1, 7, 3];
