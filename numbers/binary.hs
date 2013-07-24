import Data.Char (digitToInt)
import System.Environment (getArgs)

binaryToDecimal :: String -> String
binaryToDecimal = show . foldl f 0 . zip [0..] . reverse
  where f acc (p, x) = acc + 2 ^ p * digitToInt x

decimalToBinary' :: Int -> String
decimalToBinary' n
  | n <= 1         = show n
  | n `mod` 2 == 0 = '0' : decimalToBinary' (n `quot` 2)
  | otherwise      = '1' : decimalToBinary' (n `quot` 2)

decimalToBinary :: String -> String
decimalToBinary = reverse . decimalToBinary' . read

main :: IO ()
main = do
  args <- getArgs
  if head args == "bin" then
    mapM_ (putStrLn . decimalToBinary) (tail args)
  else if head args == "dec" then
    mapM_ (putStrLn . binaryToDecimal) (tail args)
  else
    putStrLn "Usage: ./binary bin/dec n"
