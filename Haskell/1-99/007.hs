-- https://projecteuler.net/problem=7

primeList :: [Integer]
primeList = plist [2..]
    where
        plist (x:xs) = x : plist [y | y <- xs, y `mod` x > 0]

main :: IO ()
main = print $ primeList !! 10000
