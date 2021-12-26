fun count_main i =
    let
        fun count 0 = []
            | count i = count (i-1) @ [i]
    in
        count i
    end
