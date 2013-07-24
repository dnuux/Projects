import System.IO
import Control.Monad (when)

root :: Int -> Int
root = ceiling . sqrt . fromIntegral

isPrime :: Int -> Bool
isPrime n = all ((0 /=) . rem n) $ 2 : [3,5..root n]

printPrimes :: [Int] -> IO ()
printPrimes (p:ps) = do
  putStr "Press enter to get a new prime, any other to quit: "
  hFlush stdout
  input <- getLine
  when (null input) $ do
    print p
    printPrimes ps

main :: IO ()
main = printPrimes $ 2 : filter isPrime [3,5..]
