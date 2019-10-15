-- Simple example

-- You define the lamba function i.e. (\x -> x*2)
-- This doubles the argument provided to it
-- To provide the argument, you add it after the closing lamba function bracket
-- To run this in ghci, you'll use (\x -> x*2) 4
-- To apply if to the argument of the function, use 

doubleLambda :: Int -> IO Int
doubleLambda i = do
    putStrLn "Doubling with a lambda function!"
    return ((\x -> x*2) i)  
    --  You can replace brackets with $:
    --  return $ (\x -> x*2) i 


-- A more complicated example

-- The lamba function just compares and return the higher of sumSquare or SquareSum
-- You calculate sumSquare and squareSum using the function arguments x and y
-- They're calculated inside, what's known as the body of the sumSquareOrSquareSum function
-- And then pass the two calculated values as arguments to the lambda function

sumSquareOrSquareSum x y = do 
    (\sumSquare squareSum  ->
        if sumSquare > squareSum then sumSquare
        else squareSum) 
            (x^2 + y^2) ((x+y)^2)


