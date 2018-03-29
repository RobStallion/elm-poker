module Types exposing (..)

import Http


type alias Model =
    { deck : List Card
    , remainingCards : List Card
    , players : List Player
    , numPlayers : Int
    }


type Msg
    = RecieveCards (Result Http.Error (List Card))
    | Shuffle
    | GetShuffledDeck (List Card)
    | Deal
    | CheckHand HandType


type alias Player =
    { hand : List Card
    , handType : Maybe HandType
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
