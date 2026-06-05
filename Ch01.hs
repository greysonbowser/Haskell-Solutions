module Ch01 where

{- Exercise 1.1
   Trivial, just apply inner function first.
   
   double (double 2)
   = double (2 + 2)
   = (2 + 2) + (2 + 2)
   = 8  
 -}

{- Exercise 1.2
   Let x be an arbitrary number. Then:

   sum [x]
   = x + sum []
   = x + 0
   = x
   QED
-}

-- Exercise 1.3

prod [] = 1
prod (n:ns) = n * prod ns

-- Exercise 1.4

rqsort [] = []
rqsort (x:xs) = rqsort larger ++ [x] ++ rqsort smaller
                where
                   smaller = [a | a <- xs, a <= x]
                   larger  = [b | b <- xs, b > x]

{- Exercise 1.5
   
   Let qsort be defined as follows:

   qsort [] = []
   qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
                  where
                     smaller = [a | a <- xs, a <= x]
                     larger  = [b | b <- xs, b > x]
    
    Suppose the <= in smaller is replaced by <. 
    Then the function will drop any duplicate terms.
-}
