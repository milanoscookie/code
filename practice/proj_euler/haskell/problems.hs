{- #1 -}
p1 = sum [n | n <- [1..999], n `rem` 5 == 0 || n `rem` 3 == 0]
{- #2 -}
fib n = l 1 1 n where
  l a b c = if c<2 then a
    else l (a + b) a (c - 1)
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
fibsum =
  sum(filter (<4000000) (filter even [ (fib x) | x <- [1..100]]))

{- #3 -}
primes :: [Integer]
primes = sieve (2 : [3, 5..])
  where
    sieve (p:xs) = p : sieve [x|x <- xs, x `rem` p > 0]



