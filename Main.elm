module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Json.Encode as JE
import WebSocket


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


type alias Model =
    Int


type Msg
    = Msg1
    | Msg2


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Msg1 ->
            ( model, Cmd.none )

        Msg2 ->
            ( model, Cmd.none )


view : Model -> Html Msg
view model =
    div [ class "canvas" ]
        [ div []
            [ button [] [ text "up" ]
            ]
        , div [] [ button [] [ text "left" ], button [] [ text "enter" ], button [] [ text "right" ] ]
        , div [] [ button [] [ text "down" ] ]
        ]


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


init : ( Model, Cmd Msg )
init =
    ( 1, Cmd.none )
