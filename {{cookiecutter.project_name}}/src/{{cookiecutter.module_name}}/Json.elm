module {{cookiecutter.module_name}}.Json exposing (..)

import {{cookiecutter.module_name}}.Types as Types
import Json.Decode exposing (andThen, Decoder, fail, int, list, maybe, string, succeed)
import Json.Decode.Pipeline exposing (decode, optional, required)


recordDecoder : Decoder Types.RecordType
recordDecoder =
    decode Types.RecordType
        |> required "name" string
        |> required "id" int
