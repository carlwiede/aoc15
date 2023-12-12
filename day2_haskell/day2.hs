main :: IO ()
main = do
    fileContent <- readFile "input.txt"
    let input = lines fileContent
    print input