-- List creation 
createLists = do
  print (1:[]) -- [1]
  print (1:2:[]) -- [1,2]
  print ['h','e','l','l','o'] -- strings are actually lists of characters. Output: "hello"
  print ["h","ello"] -- you can't cons two lists together. Output: ["h","ello"]
  print ("h" ++ "ello") -- you need the ++ operator for that. Output: "hello"
  print $ head "hello" -- h
  print $ tail "hello" -- ello
  print $ length "hello" -- 5
  print $ reverse "hello" -- olleh


-- Access element by index (!!)
accessByIndex = print ([1,2,3] !! 0)  -- O: 1
accessByIndex2 = (!!) "dog" -- use partial application for readability
-- Can now simply provide the index number to access the element rather than hardcoding
-- *Main> accessByIndex2 1
-- 'o'

-- Check if a list contains an element 
checkElExists = elem 13 [0, 13 .. 100] -- True

-- Take and drop
myTake = take 5 [1 .. 10] -- [1,2,3,4,5]
myDrop = drop 5 [1 .. 10] -- [6,7,8,9,10]

-- Zip to combine lists into tuple pairs
myZip = zip [1,2,3] [2,4,6] -- [(1,2),(2,4),(3,6)]

-- Cycle 
ones n = take n (cycle [1]) -- Creates an an array with n 1's
