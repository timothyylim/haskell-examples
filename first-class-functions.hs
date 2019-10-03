-- Apply a function if a value is even:
ifEven myFunction x = if even x
                      then myFunction x
                      else x

-- A function we can apply:
inc n = n + 1

-- Let's apply it:
incIfEven :: Int -> IO Int
incIfEven x = return $ ifEven inc x  

