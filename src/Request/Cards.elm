module Request.Cards exposing (..)

import Types exposing (..)
import Http
import Json.Decode as Json exposing (..)
import Json.Decode.Pipeline exposing (..)


getCardsFromApi : Cmd Msg
getCardsFromApi =
    Http.get "https://api.myjson.com/bins/ot0r1" cardListDecoder
        |> Http.send RecieveCards


cardDecoder : Json.Decoder Card
cardDecoder =
    decode Card
        |> required "suit" string
        |> required "name" string
        |> required "value" int
        |> required "imageUrl" string


cardListDecoder : Json.Decoder (List Card)
cardListDecoder =
    Json.field "cards" <| Json.list cardDecoder
