module {{cookiecutter.module_name}}.View exposing (view)

import {{cookiecutter.module_name}}.Model as Model
import {{cookiecutter.module_name}}.Msg as Msg
import {{cookiecutter.module_name}}.Routing as Routing
-- import {{cookiecutter.module_name}}.Types as Types
import Html exposing (a, br, div, h1, Html, img, p, text)
import Html.Attributes exposing (src)
-- import Material.Button as Button
-- import Material.Card as Card
-- import Material.Chip as Chip
import Material.Color as Color
-- import Material.Elevation as Elevation
import Material.Footer as Footer
-- import Material.Icon as Icon
import Material.Layout as Layout
import Material.Options as Options
-- import Material.Textfield as Textfield
import Material.Typography as Typo


footer : Html Msg.Msg
footer =
    Footer.mini []
        { left =
            Footer.left []
                [ Footer.logo [] [ Footer.html <| text "ACCU 2017 Schedule" ]
                , Footer.links []
                    [ Footer.linkItem
                        [ Footer.href "{{cookiecutter.url}}" ]
                        [ Footer.html <| img [ src "./static/img/GitHub-Mark-Light-32px.png" ] [] ]
                    ]
                ]
        , right =
            Footer.right []
                [ Footer.links []
                    [ Footer.linkItem
                        [ Footer.href "" ]
                        [ Footer.html <| text "© {{cookiecutter.year}} {{cookiecutter.author}}"
                        ]
                    ]
                ]
        }


view : Model.Model -> Html Msg.Msg
view model =
    let
        main =
            case model.location of
                Routing.Index ->
                    text "index!"

                Routing.DeepLink id ->
                    text "deep link!"

                _ ->
                    text "not found!"
    in
        div
            []
            [ Layout.render Msg.Mdl
                model.mdl
                [ Layout.fixedHeader
                ]
                { header =
                    [ Layout.row
                        [ Color.background Color.primary ]
                        [ Layout.title
                            [ Typo.title, Typo.left ]
                            [ text "{{cookiecutter.project_name}}" ]
                        , Layout.spacer
                        , Layout.title
                            [ Typo.title ]
                            [ text "{{cookiecutter.project_name}}" ]
                        , Layout.spacer
                        ]
                    ]
                , tabs = ( [], [] )
                , drawer = []
                , main =
                    [ Options.styled div
                        [ Options.css "margin-left" "10px"
                        , Options.css "margin-top" "10px"
                        , Options.css "margin-bottom" "10px"
                        ]
                        [ main ]
                    , footer
                    ]
                }
            ]
