module {{cookiecutter.module_name}}.Model exposing (initialModel, Model)

{-| The overal application model.
-}

import {{cookiecutter.module_name}}.Routing as Routing
import {{cookiecutter.module_name}}.Types as Types
import Material
import Navigation


type alias Model =
    { record : Types.RecordType
    , value : String
    , mdl : Material.Model
    , location: Routing.RoutePath
    }


initialModel : String -> Navigation.Location -> Model
initialModel envVar location =
    { record = Types.RecordType "hola!" 42
    , value = envVar
    , location = Routing.parseLocation location
    , mdl = Material.model
    }
