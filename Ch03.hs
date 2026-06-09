module Ch03 where

{- Exercise 1
 
   ['a','b','c'] :: [Char]

   ('a','b','c') :: (Char, Char, Char)

   [(False,'0'),(False,'1')] :: [(Bool, Char)]

   ([False,True],['0','1']) :: ([Bool], [Char])

   [tail, init, reverse] :: [[a] -> [a]]

 -}

-- Exercise 2

-- bools :: [Bool]
bools = [True]

-- nums :: [[Int]]
nums = [[0],[0,1],[0,1,2]]

-- add :: Int -> Int -> Int -> Int
add' x y z = x + y + z

-- copy :: a -> (a,a)
copy x = (x,x)

-- apply :: (a -> b) -> a -> b
apply f x = f x

{- Exercise 3
   
   second xs = head (tail xs)
   second :: [a] -> a

   swap (x,y) = (y,x)
   swap :: (a,b) -> (b,a)

   pair x y = (x,y)
   pair :: a -> b -> (a,b)

   double x = x*2
   double :: Num a => a -> a 

   palindrome xs = reverse xs == xs
   palindrome :: Eq a => [a] -> Bool

   twice f x = f (f x)
   twice :: (a -> a) -> a -> a
 -} 

-- Exercise 4 N/A

{- Exercise 5
   
   
-}   
