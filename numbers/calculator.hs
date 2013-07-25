-- Uses the shunting-yard algorithm to convert the expression to
-- Reverse Polish notation which is then evaluated.
-- Does not check for invalid expressions.

import Data.Char
import Data.List
import Data.Fixed (mod')
import Data.Function (on)
import Data.Maybe (fromJust)
import Control.Monad (liftM2)

isOperator :: Char -> Bool
isOperator = flip elem "+-/*^%!"

leftAssociative :: Char -> Bool
leftAssociative = liftM2 (&&) (/= '^') (/= '!')

precedence :: String -> Int
precedence op = snd . fromJust $ find ((op ==) . fst) precedences
  where precedences = [("+", 0), ("-", 0), ("%", 1), ("*", 2), ("/", 2), ("^", 3), ("!", 4)]

tokenize :: String -> [String]
tokenize = groupBy ((==) `on` generalCategory) . filter (not . isSpace)

toRPN :: [String] -> [String] -> String
toRPN [] [] = ""
toRPN [] stack = unwords stack
toRPN (token:tokens) stack
  | x == '('     = toRPN tokens (groupBy (/=) token ++ stack)
  | x == ')'     = unwords preOps' ++ space preOps' ++ funToken ++ space funToken ++ toRPN tokens stack'
  | isDigit x    = token ++ " " ++ toRPN tokens stack
  | isLetter x   = toRPN tokens (token : stack)
  | isOperator x = unwords preOps ++ space preOps ++ toRPN tokens (token : rest)
    where x                  = head token
          space lst          = if null lst then "" else " "
          (funToken, stack') = if not (null rest'') && isLetter ((head . head) rest'') then
                               (head rest'', tail rest'') else ("", rest'')
          (preOps, rest)     = span (liftM2 (&&) (isOperator . head) higherPrecedence) stack
          (preOps', rest')   = span (isOperator . head) stack
          higherPrecedence y = (leftAssociative x && precedence token == precedence y)
                               || (precedence token < precedence y)
          rest''             = tail rest'

evalRPN :: String -> Float
evalRPN = head . foldl f [] . words
    where f (x:y:ys) "*"  = (x * y) : ys
          f (x:y:ys) "+"  = (x + y) : ys
          f (x:y:ys) "-"  = (y - x) : ys
          f (x:y:ys) "/"  = (y / x) : ys
          f (x:y:ys) "^"  = (y ** x) : ys
          f (x:y:ys) "%"  = (y `mod'` x) : ys
          f (x:xs) "!"    = product [1..x] : xs
          f (x:xs) "sin"  = sin x : xs
          f (x:xs) "cos"  = cos x : xs
          f (x:xs) "tan"  = tan x : xs
          f (x:xs) "sqrt" = sqrt x : xs
          f (x:xs) "log"  = log x : xs
          f (x:xs) "ln"   = log x : xs
          f xs numberStr  = read numberStr : xs

main :: IO ()
main = interact $ unlines . map (show . evalRPN . flip toRPN [] . tokenize) . lines
