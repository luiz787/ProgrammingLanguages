fun compose f g x = f (g x);

fun square x = x * x;
fun sum (a, b) = a + b;

val squareOfSum = compose square sum;

squareOfSum (4, 5);
