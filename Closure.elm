module Closure exposing (main)
import Html exposing (Html)

createIncrementer : Int -> Int -> Int
createIncrementer n =
 let incrementValue = n
 in ((+) incrementValue)

incrementByOne : Int -> Int
incrementByOne = createIncrementer 1

incrementByTwo : Int -> Int
incrementByTwo = createIncrementer 2

incrementBy1 = incrementByOne 3
incrementBy2 = incrementByTwo 3

main : Html msg
main =
  Html.text <| Debug.toString <| incrementBy2


