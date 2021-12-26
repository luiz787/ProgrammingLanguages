fun split [] = ([], [])
	| split (h::[]) = ([h], [])
	| split (f::s::[]) = ([f], [s])
	| split (f::s::t) =
		let
			val pair = split t
		in
			(f::(#1 pair), s::(#2 pair))
		end;
