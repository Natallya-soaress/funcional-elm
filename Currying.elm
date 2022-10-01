module Currying exposing (..)
import Html exposing (text)

log : String -> String -> String -> String -> String
log modo mensagem erro numero =
   if modo == "DEBUG" then 
     (mensagem ++ erro ++ " na linha " ++ numero) 
   else if modo == "ERROR" then
     (mensagem ++ erro ++ "na linha" ++ numero)
   else if modo == "WARN" then 
     (mensagem ++ erro ++ "na linha" ++ numero)
   else 
     ("Modo inválido!")

logError = log "ERROR" "Deu ruim!!" 

main =

  text (logError " erro geral" "4")
