doubleLambda :: Int -> IO Int
doubleLambda i = do
    putStrLn "Doubling with a lambda function!"
    return ((\x -> x*2) i)  
--  $ can replace brackets:
--  return $ (\x -> x*2) i 


