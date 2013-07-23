import System.Environment

root :: Int -> Int
root = ceiling . sqrt . fromIntegral

isPrime :: Int -> Bool
isPrime n = all ((0 /=) . rem n) $ 2 : [3,5..root n]

factor :: Int -> [Int] -> [Int]
factor n factors
  | n == 1 = []
  | root n < head factors = [n]
  | otherwise = x : factor (n `div` x) factors'
    where factors' = dropWhile ((>0) . rem n) factors
          x = head factors'

main :: IO ()
main = getArgs >>= print . flip factor (2 : filter isPrime [3,5..]) . read . head
