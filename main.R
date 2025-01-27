library(Rcpp)

cppFunction('long long factorial(int n) {
    // Reject negative input
    if (n < 0) {
        return -1;
    }
    if (n == 0) {
        return 1;
    }
    long long result = 1;
    for (int i = 1; i <= n; ++i) {
        result *= i;
    }
    return result;
}')

factorial(3)
