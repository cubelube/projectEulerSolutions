-- https://projecteuler.net/problem=5

main:: IO ()
main = print (foldl1 lcm [1..20])
