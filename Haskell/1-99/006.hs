-- https://projecteuler.net/problem=6

main :: IO ()
main = do
    let squaredSum = sum [1..100] ** 2
    let sumSquared = sum $ map (**2) [1..100]

    let difference = squaredSum - sumSquared

    print difference
