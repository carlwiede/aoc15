import Data.List.Split (splitOn)

parseDimensions :: String -> (Int, Int, Int)
parseDimensions input =
    let [w, h, l] = map read (splitOn "x" input)
    in (w, h, l)

calculateArea :: (Int, Int, Int) -> Int
calculateArea (w, h, l) =
    let side1 = w * h
        side2 = w * l
        side3 = h * l
        smallestSide = minimum [side1, side2, side3]
    in 2 * (side1 + side2 + side3) + smallestSide

calculateRibbon :: (Int, Int, Int) -> Int
calculateRibbon (w, h, l) =
    let side1 = w + h
        side2 = w + l
        side3 = h + l
        smallboi = minimum [side1, side2, side3]
        ribbon = w * h * l
    in smallboi * 2 + ribbon

main :: IO ()
main = do
    fileContent <- readFile "input.txt"
    let dimensions = lines fileContent

        areas = map (calculateArea . parseDimensions) dimensions
        totalArea = sum areas

        ribbons = map (calculateRibbon . parseDimensions) dimensions
        totalRibbons = sum ribbons

    putStrLn $ "Part 1: " ++ show totalArea
    putStrLn $ "Part 2: " ++ show totalRibbons
