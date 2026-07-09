module Ch04 where
import Prelude hiding ((&&), (||))

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

-- Exercise 4.4

(||) :: Bool -> Bool -> Bool
True || True   = True
True || False  = True
False || False = False
False || True  = True

-- Exercise 4.5
(&&) :: Bool -> Bool -> Bool
(&&) a b = if a == False then False else
                if b == False then False else True

-- Exercise 4.6
(&&&) :: Bool -> Bool -> Bool
(&&&) a b = if a == True then b else False



-- Exercise 4.7
mult :: Int -> Int -> Int -> Int
mult x y z = x*y*z


-- Exercise 4.8
luhnDouble ::  Int -> Int
luhnDouble x = if 2*x > 9 then (2*x-9) else 2*x


luhn :: Int -> Int -> Int -> Int -> Bool
luhn w x y z | ((luhnDouble w) + x + (luhnDouble y) + z) `mod` 10 == 0 = True
             | otherwise = False

