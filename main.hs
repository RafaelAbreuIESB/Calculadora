main :: IO ()
main = do
  putStrLn "Calculadora simples em Haskell"
  putStrLn "Digite o primeiro número:"
  input1 <- getLine
  putStrLn "Digite a operação (+, -, *, /):"
  op <- getLine
  putStrLn "Digite o segundo número:"
  input2 <- getLine

  let num1 = read input1 :: Double
      num2 = read input2 :: Double
      resultado = calcular op num1 num2

  putStrLn $ "Resultado: " ++ show resultado

calcular :: String -> Double -> Double -> Double
calcular "+" x y = x + y
calcular "-" x y = x - y
calcular "*" x y = x * y
calcular "/" x y = if y /= 0 then x / y else error "Erro: divisão por zero"
calcular _ _ _ = error "Operação inválida"