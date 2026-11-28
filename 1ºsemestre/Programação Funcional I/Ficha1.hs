module Ficha1 where
import Data.Char ( ord, chr )

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
horaValida (h,m) = h>=0 && m>=0 && h<=23 && m<=59  

horaDepois :: Hora -> Hora -> Bool
horaDepois (h1,m1) (h2,m2) |h1 > h2 = True 
                           |h1 == h2 && m1>m2 = True 
                           |otherwise = False 

hora2min :: Hora -> Int 
hora2min (h,m) = h * 60 + m 

min2hora :: Int -> Hora 
min2hora m = (div m 60, mod m 60) --Cada hora tem 60min, o quociente desta divisão dá o número exato de horas completas. O que sobra da divisão corresponde aos minutos que não chegaram para formar uma hora completa.

difHoras :: Hora -> Hora -> Int 
difHoras h1 h2 = abs (hora2min h1 - hora2min h2)

addMin :: Int -> Hora -> Hora 
addMin x (h,m) = min2hora (hora2min (h,m) + x) 

{- 
data Hora = H Int Int deriving (Show,Eq)

horaValida :: Hora -> Bool 
horaValida (H h m) = h>=0 && m>=0 && h<=23 && m<=59 

horaDepois :: Hora -> Hora -> Bool
horaDepois (H h1 m1) (H h2 m2) |h1 > h2 = True 
                           |h1 == h2 && m1>m2 = True 
                           |otherwise = False 

hora2min :: Hora -> Int 
hora2min (H h m) = h * 60 + m 

min2hora :: Int -> Hora 
min2hora m = (div m 60) (mod m 60) 

difHoras :: Hora -> Hora -> Int 
difHoras h1 h2 = abs (hora2min h1 - hora2min h2)

addMin :: Int -> Hora -> Hora 
addMin  x (H h m) = min2hora (hora2min (H h m) + x) 
-}


data Semaforo = Verde | Amarelo | Vermelho deriving (Show,Eq)

next :: Semaforo -> Semaforo 
next Verde = Amarelo 
next Amarelo = Vermelho 
next Vermelho = Verde 

stop :: Semaforo -> Bool 
stop s = s == Vermelho 

safe :: Semaforo -> Semaforo -> Bool 
-- Devolve True se pelo menos um dos semáforos estiver Vermelho (caso contrário, há risco de colisão).
safe s1 s2 = s1 == Vermelho || s2 == Vermelho


data Ponto = Cartesiano Double Double | Polar Double Double 
            deriving (Show,Eq)

posx :: Ponto -> Double 
posx p = case p of Cartesiano x y -> x
                   Polar d a -> if a == pi/2 then 0 else d * cos a

posy :: Ponto -> Double 
posy p = case p of Cartesiano x y -> y 
                   Polar d a -> if a == pi then 0 else d * sin a 

raio :: Ponto -> Double 
raio p = case p of Cartesiano x y -> sqrt (x^2 + y^2)
                   Polar d a -> d

angulo :: Ponto -> Double 
angulo p = case p of Cartesiano x y -> if x < 0 && y == 0 then pi else 
                                       if x < 0 then pi + atan (x/y) 
                                       else atan (y/x)
                     Polar d a -> a 

distPontos :: Ponto -> Ponto -> Double
distPontos p1 p2 = sqrt (((posx p2 - posx p1) ^ 2) + (posy p2 - posy p1) ^ 2)


data Figura = Circulo Ponto Double 
            | Rectangulo Ponto Ponto 
            | Triangulo Ponto Ponto Ponto 
              deriving (Show,Eq)

poligono :: Figura -> Bool 
poligono (Circulo c r) = False 
poligono (Rectangulo p1 p2) = posx p1 /= posx p2 && posy p1 /= posy p2 -- Verifica que os pontos não têm as mesmas coordenadas 
poligono (Triangulo p1 p2 p3) = (posy p2 - posy p1) / (posx p2 -posx p1) /= (posy p3 - posy p2) / (posx p3 - posx p2) -- Verifica que os pontos não pertencem todos à mesma reta

vertices :: Figura -> [Ponto]
vertices (Circulo c r) = []
vertices rect@(Rectangulo p1 p2) = if poligono rect then [p1, Cartesiano (posx p1) (posy p2), Cartesiano (posx p1) (posy p1), p2] else []
vertices tri@(Triangulo p1 p2 p3) = if poligono tri then [p1, p2, p3] else []

area :: Figura -> Double 
area (Triangulo p1 p2 p3) = 
      let a = distPontos p1 p2 
          b = distPontos p2 p3 
          c = distPontos p3 p1 
          s = (a+b+c) / 2 --semi-perimetro 
      in sqrt (s*(s-a)*(s-b)*(s-c)) -- formula de Heron
area (Circulo c r) = pi * (r ^ 2) 
area (Rectangulo p1 p2) = abs(posx p2 - posx p1) * abs(posy p2 - posy p1)

perimetroFig :: Figura -> Double 
perimetroFig (Circulo c r) = 2 * pi * r 
perimetroFig (Rectangulo p1 p2) = 2 * (abs(posx p2 -posx p1)) + 2* (abs(posy p2 - posy p1))
perimetroFig (Triangulo p1 p2 p3) = distPontos p1 p2 + distPontos p2 p3 + distPontos p3 p1  


isLower :: Char -> Bool 
isLower c = ord c >= ord 'a' && ord c <= ord 'z' 

isDigit :: Char -> Bool 
isDigit c = ord c >= ord '0' && ord c <= ord '9' 

isAlpha :: Char -> Bool 
isAlpha c = (ord c >= ord 'a' && ord c <= ord 'z') || (ord c >= ord 'A' && ord c <= ord 'Z' ) 

toUpper :: Char -> Char 
toUpper c = if isLower c then chr (ord c - 32) else c -- 32 é o resultado de `ord 'a' -ord 'A'`

intToDigit :: Int -> Char 
intToDigit n = chr (n + 48) -- 48 é o resultado de `ord '0' -0`

digitToInt :: Char -> Int 
digitToInt c = ord c - 48 

