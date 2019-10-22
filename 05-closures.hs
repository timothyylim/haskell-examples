-- You can use partial application to 'start' functions and supply the parameters later
-- Here is a function to generate a URL given some strings as parameters
getRequestURL host apiKey resource id = host ++ 
                                        "/" ++ 
                                        resource ++
                                        "/" ++
                                        id ++
                                        "?token=" ++
                                        apiKey

-- We can pre-supply the host if we know we are using the same host throughout our program:
urlBuilderWithHost = getRequestURL "http://example.com"

-- Essentially what we're doing here is partially applying the host var to the get getRequestURL function
-- We're storing the partially applied function inside the urlBuilder var
-- urlBuilderWithHost var is essentially just the getRequestURL function with the host var applied
-- But it's waiting for the other two vars to be applied do it

-- Call this function to test it
print_UrlBuilderWithHost apiKey resource id = do
  putStrLn $ urlBuilderWithHost apiKey resource id                                          

-- *Main> print_UrlBuilderWithHost "my_key" "my_resourse" "my_id"
-- http://example.com/my_resourse/my_id?token=my_key

-- We can even pre-supply all parameters except the id:
urlBuilderId = urlBuilderWithHost "API_KEY" "books"

print_urlBuilderId id = do
  putStrLn $ urlBuilderId id                                          

-- *Main> print_urlBuilderId "1"
-- http://example.com/books/1?token=API_KEY