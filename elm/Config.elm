module Config where

import Config.Model as Config exposing (BackendConfig)
import Time exposing (Time)

localBackend : BackendConfig
localBackend =
  { backendUrl = "http://dev-syui.pantheonsite.io"
  , githubClientId = "051523e381865ad2155b"
  , name = "local"
  , hostname = "localhost"
  }

prodBackend : BackendConfig
prodBackend =
  { backendUrl = "http://live-syui.pantheonsite.io"
  , githubClientId = "051523e381865ad2155b"
  , name = "gh-pages"
  , hostname = "syui.github.io"
  }

backends : List BackendConfig
backends =
  [ localBackend
  , prodBackend
  ]

cacheTtl : Time.Time
cacheTtl = (5 * Time.second)
