: 2define create 0 , 0 , ;
2define input

: inputstring 
     input 2! ; 
: inputloop ( -- )
    ( create a if condition to check if the character is an operation or a integer by defining words for them respectively)
    ( extend the lexer to all 4 operations and all 9 single digit positive integers) 
    ( if these 2 are done, add the lexer tokens inside an array ) 
    input 2@ 0 do 
        dup i + c@ 49 = if ." Token - 1 " else 
        dup i + c@ 43 = if ." Token - + " else
        dup i + c@ 53 = if ." Token - 5 " else 
        ." its a unknown character" 
        then then then
    loop ;

    
