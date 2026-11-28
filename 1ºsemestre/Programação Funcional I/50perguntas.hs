module 50perguntas where 

myenumFromTo :: Int -> Int -> [Int]
myenumFromTo i f |i > f = []
                 |otherwise = i : myenumFromTo (i+1) f


