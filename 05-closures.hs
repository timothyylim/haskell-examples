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

-- Call this function to test it
print_UrlBuilderWithHost apiKey resource id = do
  putStrLn $ urlBuilderWithHost apiKey resource id                                          

-- We can even pre-supply all parameters except the id:
urlBuilderId = urlBuilderWithHost "API_KEY" "books"

print_urlBuilderId id = do
  putStrLn $ urlBuilderId id                                          
