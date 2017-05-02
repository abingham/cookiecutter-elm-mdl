module {{cookiecutter.module_name}}.Msg exposing (..)

import {{cookiecutter.module_name}}.Types as Types
import Http
import Material
import Navigation


type Msg
    = RecordResult (Result Http.Error Types.RecordType)
    | Mdl (Material.Msg Msg)
    | UrlChange Navigation.Location
