module {{cookiecutter.module_name}}.Update exposing (update)

import {{cookiecutter.module_name}}.Msg as Msg
import {{cookiecutter.module_name}}.Model exposing (Model)
import {{cookiecutter.module_name}}.Routing as Routing
import Material


update : Msg.Msg -> Model -> ( Model, Cmd Msg.Msg )
update msg model =
    case msg of
        Msg.RecordResult (Ok record) ->
            { model | record = record } ! []

        Msg.UrlChange location ->
            { model | location = Routing.parseLocation location } ! []

        Msg.Mdl mdlMsg ->
            Material.update Msg.Mdl mdlMsg model

        _ -> model ! []
