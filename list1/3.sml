fun sumLists ([], []) = []
    | sumLists (x::xs, y::ys) = (x + y)::sumLists(xs, ys);

sumLists([2, 5, 10], [1, 15, 4]);
