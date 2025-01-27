# https://www.rcpp.org/

library(Rcpp)

cppFunction('int fibonacci(const int x) {
   if (x < 2) return(x);
   return (fibonacci(x - 1)) + fibonacci(x - 2);
}')

factorial(3)
