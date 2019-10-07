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


