-- Prática 03 de Haskell
-- Nome: Fernando Kalikosque Laydner Júnior

import Data.Char

--1
add10toall :: [Int] -> [Int]
add10toall lista = [x + 10 | x <- lista]

--2
multN :: Int -> [Int] -> [Int]
multN mult lista = [x*mult | x <- lista]

--3
multN' :: Int -> [Int] -> [Int]
multN' mult lista = map (\x -> x*mult ) lista

--4
applyExpr :: [Int] -> [Int]
applyExpr lista = [ 3*x+2 | x <- lista]

--5
applyExpr' :: [Int] -> [Int]
applyExpr' lista = map (\x -> 3*x+2 ) lista

--6
addSuffix :: String -> [String] -> [String]
addSuffix sufixo lista = [ x ++ sufixo | x <- lista]

--7
selectgt5 :: [Int] -> [Int]
selectgt5 lista = [ x | x <- lista, x >=5 ]

--8
sumOdds :: [Int] -> Int
sumOdds lista = sum [ x | x <- lista, odd x ]

--9
sumOdds' :: [Int] -> Int
sumOdds' lista = sum $ filter(\x -> odd x)lista

--10
selectExpr :: [Int] -> [Int]
selectExpr lista = [x | x <- lista, even x, 20 < x, x > 50]

--11
countShorts :: [String] -> Int
countShorts lista = sum [length x | x <- lista, (length x) < 5]

--12
calcExpr :: [Float] -> [Float]
calcExpr lista = [ x | x <- lista, x^2/2 > 10]

--13
trSpaces :: String -> String
trSpaces lista = [if x == ' ' then '-' else x| x <- lista]

--14
selectSnd :: [(Int,Int)] -> [Int]
selectSnd lista = [y | (x,y) <- lista]

--15
dotProd :: [Int] -> [Int] -> Int
dotProd lista1 lista2 = sum [ x*y | (x,y) <- (zip lista1 lista2), even (x*y)]