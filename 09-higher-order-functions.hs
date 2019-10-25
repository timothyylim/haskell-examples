-- Map
    -- Args a function and a list
    -- Applies that function on each element in the list
    -- Returns a list
my_reverse = map reverse ["dog", "cat", "ball"] -- ["god","tac","llab"]

-- You can also use partial application to apply a function to each element in the list
my_cat = map ("a " ++) ["train", "plane", "boat"] -- ["a train","a plane","a boat"]


-- Filter
    -- Args a function that returns a boolean value, and a list
    -- Applies that function on each element in the list
    -- Returns a list of elements for which the boolean returns true
my_filter = filter (\(x:xs) -> x == 'a') ["apple", "banana", "avocado"] -- ["apple","avocado"]
-- Note (x:xs) variable. 
-- That is convention to use when the variable is a list
-- x refers to the head, and xs refers to the tail


-- Folding a list
    -- Args a binary function (function that takes two args), init value and a list
    -- Applies the function to the init value, and the head of the list
    -- And then to the result and the next element in the list
    -- Returns a number
sum_list = foldl (+) 0 [1,2,3,4] -- 10
prod_list = foldl (*) 1 [1,2,3,4] -- 24
sum_square xs = foldl (+) 0 (map (^2) xs) 
-- Square each element in a list, and return the sum of the squares
-- sum_square [1,2] -> 5
sub_list = foldl (-) 0 [1,2,3,4] -- -10
sub_list_r = foldr (-) 5 [1,2,3,4] -- 3
-- r means the accumulator is the right side arguement to the binary function
-- i.e 4 - 5 = -1; 3 -(-1) = 4; 2 - 4 = -2, 1 -(-2) = 3