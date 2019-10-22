-- Functions as arguments

-- Apply a function if a value is even:
-- He, we're using the built in even function to apply myFunction to x
-- if x is even, we apply myFunction x
ifEven myFunction x = if even x
                      then myFunction x
                      else x

-- A function we can apply:
inc n = n + 1

-- Let's apply it:
incIfEven :: Int -> IO Int
incIfEven x = return $ ifEven inc x 

-- Can also apply lamba function, instead of a defined inc n function
tripIfEven :: Int -> IO Int
tripIfEven x = return $ ifEven (\y -> y*3) x  

-- Returning Functions
getFunction amount = case amount of -- doing a case
    "one" -> incIfEven
    _ -> tripIfEven -- this is applied if the case doesnn't match

-- To call it: 
-- *Main> getFunction "one" 2
-- 3