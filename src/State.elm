module State exposing (..)

import Helpers.Card as Card
import Random exposing (generate)
import Random.List exposing (shuffle)
import Request.Cards exposing (getCardsFromApi)
import Types exposing (..)


initialModel : Model
initialModel =
    { deck = []
    , remainingCards = []
    , hand = []
    , handType = Nothing
    , players = []
    , numPlayers = 4
    }


init : ( Model, Cmd Msg )
init =
    ( initialModel, getCardsFromApi )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        RecieveCards (Ok deck) ->
            ( model, generate GetShuffledDeck (shuffle deck) )

        RecieveCards (Err err) ->
            ( model, Cmd.none )

        Shuffle ->
            ( { model | handType = Nothing, hand = [], remainingCards = [] }
            , generate GetShuffledDeck (shuffle model.deck)
            )

        GetShuffledDeck shuffledDeck ->
            ( { model | deck = shuffledDeck }, Cmd.none )

        Deal ->
            let
                ( hand, remainingCards ) =
                    Card.dealHand model.deck
            in
                ( { model | hand = hand, remainingCards = remainingCards }, Cmd.none )

        CheckHand hand ->
            ( { model | handType = Just hand }, Cmd.none )
