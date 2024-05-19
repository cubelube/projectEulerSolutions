-- https://projecteuler.net/problem=4

reverseInt :: Int -> Int
reverseInt = read . reverse . show

isPalindrome :: Int -> Bool
isPalindrome n = n == reverseInt n

getPals :: Int
getPals = maximum [x * y | x <- [100..999], y <- [100..999], isPalindrome (x * y)]

main :: IO ()
main = do
    print getPals
