module Ficha1 where

perimetro :: Float -> Float 
perimetro r = 2 * pi * r

dist :: (Double,Double) -> (Double,Double) -> Double 
dist p1 p2 = sqrt((x2-x1)^2+(y2-y1)^2)
     where (x1,y1) = p1
           (x2,y2) = p2

primUlt :: [a] -> (a,a)
--primUlt [] A função dá erro pq não pode ser vazia. O Haskell obriga sempre a devolver um par de valores do tipo a
primUlt [h] = (h,h) --se a lista só tiver um elemento ela devolve um par com elementos iguais
primUlt (h:t) = (h , last t)  

multiplo :: Int -> Int -> Bool
multiplo m n = mod m n == 0 --para ser múltiplo o resto terá de ser sempre zero

truncaImpar :: [a] -> [a]
truncaImpar l = if mod (length l) 2 == 1 then (tail l) --Para saber se um número é ímpar, divides por 2 e vês se o resto é 1. Se fosse para saber se seria par fariamos 2==0 
                else l 

max2 :: Int-> Int -> Int
max2 x y |x > y = x
         |x < y = y 
         |otherwise = x 

max3 :: Int -> Int -> Int -> Int 
max3 x y z |max2 x y >= z = max2 x y 
           |otherwise = z

nRaizes :: Double -> Double -> Double -> Int 
nRaizes a b c |delta == 0 = 1 
              |delta > 0 = 2 
              |otherwise = 0 
           where delta = b^2 -4*a*c 

raizes :: Double -> Double -> Double -> [Double]
raizes a b c |n == 0 = []
             |n == 1 = [x1]
             |n == 2 = [x1,x2]
      where n = nRaizes a b c 
            delta = b^2 -4*a*c 
            (x1,x2) = (((-b) + sqrt delta)/(2*a) , ((-b) - sqrt delta)/(2*a))


type Hora = (Int, Int)

horaValida :: Hora -> Bool 
horaValida (h,m) = h>=0 && m>=0 && h<=24 && m<=59  

horaDepois :: Hora -> Hora -> Bool
horaDepois (h1,m1) (h2,m2) |h1 > h2 = True 
                           |h1 == h2 && m1>m2 = True 
                           |otherwise = False 

