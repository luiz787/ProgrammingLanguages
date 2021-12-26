datatype btree = Leaf | Node of (btree * int * btree);

fun sumAll Leaf = 0
    | sumAll (Node (Leaf, n, Leaf)) = n
    | sumAll (Node (l, v, r)) = sumAll l + v + sumAll r;

sumAll (Node (Node (Leaf, 1, Leaf), 6, Node (Leaf, 12, Leaf)));
