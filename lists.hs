-- List creation 
createLists = do
  print (1:[])
  print (1:2:[])
  print ['h','e','l','l','o'] -- strings are actually lists of characters
  print ["h","ello"] -- you can't cons two lists together 
  print ("h" ++ "ello") -- you need the ++ operator for that


-- Access element by index (!!)
accessByIndex = print ([1,2,3] !! 0) 
accessByIndex2 = (!!) "dog" -- use partial application for readability

-- Check if a list contains an element 
checkElExists = elem 13 [0, 13 .. 100]

-- Take and drop
myTake = take 5 [1 .. 10]
myDrop = drop 5 [1 .. 10]

-- Zip to combine lists into tuple pairs
myZip = zip [1,2,3] [2,4,6]

-- Cycle 
ones n = take n (cycle [1])
printOnes = ones

