fun split f = String.tokens (fn c => c = #" " orelse c = #"," orelse c = #"." orelse c = #"-") f;

split " Bom dia,pra-voce";
