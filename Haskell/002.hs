-- https://projecteuler.net/problem=2

fibs :: Int -> Int -> [Int]
fibs x y = x:fibs y (x + y)

main :: IO ()
main = do
    let fibSum = sum . filter even $ takeWhile (<= 4000000) (fibs 0 1)

    print fibSum
