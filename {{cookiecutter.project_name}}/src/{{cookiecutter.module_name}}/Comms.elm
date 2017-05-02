module {{cookiecutter.module_name}}.Comms exposing (..)

{-| High-level API for talking to the schedule server.

# Commands
@docs TODO
-}

import {{cookiecutter.module_name}}.Json as Json
import {{cookiecutter.module_name}}.Msg as Msg
import Json.Decode exposing (list)
import Http


fetchRecord : String -> Cmd Msg.Msg
fetchRecord url =
    let
        request =
            Http.get url Json.recordDecoder
    in
        Http.send Msg.RecordResult request
