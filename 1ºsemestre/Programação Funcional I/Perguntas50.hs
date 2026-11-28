module Perguntas50 where 
import Prelude hiding (enumFromTo,enumFromThenTo,(++))
{-
Estas funções já estão pré-definidos no Prelude do Haskell. 
https://pf.sofiars.com/50q/2/ -> fonte das perguntas 
-}

enumFromTo :: Int -> Int -> [Int]
enumFromTo i f | i > f = []
                 |otherwise = i : enumFromTo (i+1) f

enumFromThenTo :: Int -> Int -> Int -> [Int]
enumFromThenTo i c f |i < f && c < i || i > f && c >= i = []
                     |otherwise = i : enumFromThenTo c (2* c - i) f 

(++) :: [a] -> [a] -> [a]
(++) [] l = l
(++) (h:t) l = h: (++) t l 



