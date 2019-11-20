{-
Welcome to a Spago project!
You can edit this file as you like.
-}
{ name = "aws-request"
, dependencies =
    [ "aff"
    , "console"
    , "datetime"
    , "effect"
    , "exceptions"
    , "foreign"
    , "foreign-object"
    , "js-date"
    , "oneof"
    , "prelude"
    , "psci-support"
    ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}