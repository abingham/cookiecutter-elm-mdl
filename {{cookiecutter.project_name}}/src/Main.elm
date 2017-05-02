module {{cookiecutter.module_name}} exposing (..)

import {{cookiecutter.module_name}}.Model exposing (..)
import {{cookiecutter.module_name}}.Msg exposing (..)
import {{cookiecutter.module_name}}.Update exposing (update)
import {{cookiecutter.module_name}}.View exposing (view)
import Material
import Navigation


type alias Flags =
    { someEnvVar : String
    }


main : Program Flags Model Msg
main =
    Navigation.programWithFlags UrlChange
        { init =
            \flags loc ->
                ( initialModel flags.someEnvVar loc
                , Material.init Mdl
                )
        , view = view
        , update = update
        , subscriptions = Material.subscriptions Mdl
        }
