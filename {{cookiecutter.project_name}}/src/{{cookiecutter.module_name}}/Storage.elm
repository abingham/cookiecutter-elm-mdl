port module {{cookiecutter.module_name}}.Storage exposing (..)

import {{cookiecutter.module_name}}.Types as Types

-- port for sending records to js land.
port send : List Types.RecordType -> Cmd msg
