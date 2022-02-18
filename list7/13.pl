mySplit(L, [], L, 0).
mySplit([H|T], [H|A], B, N) :- Decr is N-1, mySplit(T, A, B, Decr).

halve(Src, L, R) :- length(Src, Len), H is Len//2, mySplit(Src, L, R, H).

myMerge(A, [], A).
myMerge([], A, A).
myMerge([H1|T1], [H2|T2], Out) :- H1 =< H2, myMerge(T1, [H2|T2], Inter), Out = [H1|Inter].
myMerge([H1|T1], [H2|T2], Out) :- H1 > H2, myMerge(T2, [H1|T1], Inter), Out = [H2|Inter].

mergeSort([], []).
mergeSort([E], [E]).
mergeSort([H1, H2], [H2, H1]) :- H1 > H2.
mergeSort([H1, H2], [H1, H2]) :- H1 =< H2.
mergeSort(In, Out) :- halve(In, L, R), mergeSort(L, LS), mergeSort(R, RS), myMerge(LS, RS, Out).
