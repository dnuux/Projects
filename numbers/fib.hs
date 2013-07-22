import System.Environment (getArgs)

fib :: Int -> Integer
fib = head . foldl (\[a, b] _ -> [a + b, a]) [0, 1] . enumFromTo 1

fib' :: [Integer]
fib' = 0 : 1 : zipWith (+) fib' (tail fib')

fib'' :: Int -> Integer
fib'' = (map mfib [0 ..] !!)
  where mfib 0 = 0
        mfib 1 = 1
        mfib n = fib'' (n - 2) + fib'' (n - 1)

main :: IO ()
main = getArgs >>= print . fib . subtract 1 . read . head
-- main = getArgs >>= print . (fib' !!) . subtract 1 . read . head
-- main = getArgs >>= print . fib'' . subtract 1 . read . head
