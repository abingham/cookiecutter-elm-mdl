module {{cookiecutter.module_name}}.Types exposing (..)


type SomeType
    = Foo
    | Bar


type alias RecordType =
    { name : String
    , id : Int
    }
