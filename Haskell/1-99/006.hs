-- https://projecteuler.net/problem=6

main :: IO ()
main = print ((sum [1..100] ** 2) - sum (map (**2) [1..100]))
