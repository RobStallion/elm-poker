module Main exposing (..)

import Html exposing (..)
import State exposing (..)
import Types exposing (..)
import View exposing (view)


main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = always Sub.none
        }
