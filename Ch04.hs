module Ch04 where

-- Exercise 4.1

halve :: [a] -> ([a],[a])
halve xs = (take n xs, drop n xs)
           where n = div (length xs) 2

-- Exercise 4.2
-- a
third :: [a] -> a
third xs = head . tail . tail $ xs

-- b
third' :: [a] -> a
third' xs = xs !! 2

-- c
third'' :: [a] -> a
third'' (_ : _ : x : _) = x

-- Exercise 4.3
-- a
safetail :: [a] -> [a]
safetail xs = if null xs then [] else tail xs

-- b
safetail' :: [a] -> [a]
safetail' xs | null xs    = []
             | otherwise  = tail xs

-- c
safetail'' :: [a] -> [a]
safetail'' [] = []
safetail'' xs = tail xs
