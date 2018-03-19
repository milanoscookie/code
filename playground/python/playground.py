def fib(n):
    if(n <= 1):
        return 1
    return fib(n-1)+fib(n-2)
def fact(n):
    s = 0
    while(n >= 1):
        s += fact(n-1)
    return s
print(fact(5))
