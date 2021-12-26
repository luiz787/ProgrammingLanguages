fun cumSum [] = []
    | cumSum (a::[]) = a::[]
    | cumSum (a::b::c) = a::cumSum(a+b::c);

cumSum [6, 10, 3, 11];
