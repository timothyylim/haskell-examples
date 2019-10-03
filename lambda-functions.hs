doubleLambda :: Int -> IO Int
doubleLambda i = do
    putStrLn "Doubling with a lambda function!"
    return ((\x -> x*2) i)  
--  You can replace brackets with $:
--  return $ (\x -> x*2) i 


