import 'dart:io';

/// Find the nth term in the Fibonacci sequence

int fib(int n){
  if (n<2){ //base case
    return n;
  }
  return fib(n-2) + fib(n-1); //recursive case
}

void main() {
  int n;
  print("what n do you want to lookup in the Fibonacci sequence");
  String inTemp = stdin.readLineSync()!;

  try{
    n = int.parse(inTemp);
  } on FormatException {
    print("That was not an integer");
    return;
  }
  print("fib($n) = ${fib(n)}");
}

//Although this program works, it’s highly inefficient. Every call of fib() for n >= 2 results in two more calls of
//fib() because of the recursive case. Therefore, the number of calls to fib() grows exponentially by a power of 2.
//Don’t try any values of n greater than 50, unless you have a lot of time or a supercomputer at your disposal.