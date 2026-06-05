module Ch02 where

{- Exercise 2

2^3*4 becomes (2^3) * 4

2*3+4*5 becomes (2 * 3) + (4 * 5)

2+3*4^5 becomes 2 + (3 * (4^5))
-}

-- Exercise 3

n = a `div` length xs
    where
        a = 10
        xs = [1,2,3,4,5]

-- Exercise 4

mylast xs = xs !! (length xs - 1)

mylast' xs = head(reverse xs)

-- Exercise 5

myinit xs = reverse (tail (reverse xs))

myinit' xs = take (length xs - 1) xs
