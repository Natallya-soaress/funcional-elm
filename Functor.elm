module Functor exposing (main)
import Html exposing (Html)


valFilter = List.filter ((>) 3) [1,2,3,4,5]

valNum = List.map ((+) 3) [1,5,3,1,6]

valString = List.map ((++) "Uau ") ["BIFF", "BANG", "POW"]

largestDivisible : Maybe Int
largestDivisible =
    let
        p x = (modBy 3829) x == 0
    in
    List.head (List.filter p (List.reverse (List.range 0 99999)))
    
valdivisivel = largestDivisible

main : Html msg
main =
  Html.text <| Debug.toString <| valdivisivel
