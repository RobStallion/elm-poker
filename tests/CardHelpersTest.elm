module CardHelpersTest exposing (..)

import Test exposing (..)
import Expect
import CardHelpers
import Types exposing (..)
import HandTypes


hands =
    HandTypes.types


suite : Test
suite =
    describe "Testing CardHelpers"
        [ test "2 + 2 is 4" (\_ -> 2 + 2 |> Expect.equal 4)
        , test "minus 1 that's 3 quick maths" (\_ -> 4 - 1 |> Expect.equal 3)
        , describe "testing handType function for"
            [ test "Royal Flush" (\_ -> CardHelpers.handType hands.royalFlush |> Expect.equal RoyalFlush)
            , test "Straight Flush" (\_ -> CardHelpers.handType hands.straightFlush |> Expect.equal StraightFlush)
            , test "Four of a kind" (\_ -> CardHelpers.handType hands.fourOfAKind |> Expect.equal FourOfAKind)
            , test "Full house" (\_ -> CardHelpers.handType hands.fullHouse |> Expect.equal FullHouse)
            , test "Flush" (\_ -> CardHelpers.handType hands.flush |> Expect.equal Flush)
            , test "Straight" (\_ -> CardHelpers.handType hands.straight |> Expect.equal Straight)
            , test "Three of a kind" (\_ -> CardHelpers.handType hands.threeOfAKind |> Expect.equal ThreeOfAKind)
            , test "Two pair" (\_ -> CardHelpers.handType hands.twoPair |> Expect.equal TwoPair)
            , test "Pair" (\_ -> CardHelpers.handType hands.pair |> Expect.equal Pair)
            , test "High card" (\_ -> CardHelpers.handType hands.highCard |> Expect.equal HighCard)
            ]
        ]
