fun pow (_, 0) = 1
    | pow (n, 1) = n
    | pow (n, e) = n * pow(n, e - 1);

pow (5, 2);
