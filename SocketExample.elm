-- module Main exposing (..)

-- import Html exposing (..)
-- import Html.Events exposing (..)
-- import Json.Encode as JE
-- import WebSocket


-- main =
--     Html.program
--         { init = init
--         , update = update
--         , view = view
--         , subscriptions = subscriptions
--         }


-- type alias Model =
--     List String


-- type Msg
--     = Send
--     | Receive String


-- person =
--     JE.object
--         [ ( "user", JE.string "theLegend27" )
--         , ( "name", JE.string "hanz" )
--         , ( "message", JE.string "I have come to destroy your castle" )
--         ]


-- compact =
--     JE.encode 0 person


-- init : ( Model, Cmd Msg )
-- init =
--     ( [ "Welcome!" ], Cmd.none )


-- update : Msg -> Model -> ( Model, Cmd Msg )
-- update msg model =
--     case msg of
--         Send ->
--             ( model, WebSocket.send "ws://localhost:8080/room/44" compact )

--         Receive message ->
--             ( List.append model [ message ], Cmd.none )


-- subscriptions : Model -> Sub Msg
-- subscriptions model =
--     WebSocket.listen "ws://localhost:8080/room/44" Receive


-- view : Model -> Html Msg
-- view model =
--     let
--         renderMessage msg =
--             div [] [ text msg ]
--     in
--     div []
--         [ div [] (List.map renderMessage model)
--         , button [ onClick Send ] [ text "Send message to server!" ]
--         ]
