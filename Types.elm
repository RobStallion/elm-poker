module Types exposing (..)

import Http


type Msg
    = RecieveCards (Result Http.Error (List Card))
    | GetShuffledDeck (List Card)
    | DealHand
    | CheckHand HandType
    | Reshuffle


type alias Model =
    { deck : List Card
    , remainingCards : List Card
    , hand : List Card
    , handType : HandType
    }


type alias Card =
    { suit : String
    , name : String
    , value : Int
    , image : String
    }


type HandType
    = RoyalFlush
    | StraightFlush
    | FourOfAKind
    | FullHouse
    | Flush
    | Straight
    | ThreeOfAKind
    | TwoPair
    | Pair
    | HighCard
    | NoHand
