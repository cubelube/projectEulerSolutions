-- https://projecteuler.net/problem=3

primeFactors :: Int -> [Int]
primeFactors n = factors n 2
  where
    factors 1 _ = []
    factors n f
      | n `mod` f == 0 = f : factors (n `div` f) f
      | otherwise = factors n (f + 1)

main :: IO ()
main = do
    print (tail . primeFactors $ 600851475143)
