module AWS.Request
       ( MethodName(..)
       , request
       ) where

import Prelude

import AWS.Service (Service(..))
import Effect.Aff (Aff)
import Effect.Aff.Compat (EffectFnAff, fromEffectFnAff)
import Foreign (Foreign)

newtype MethodName = MethodName String

foreign import requestImpl :: Foreign -> String -> Foreign -> EffectFnAff Foreign

request :: Service -> MethodName -> Foreign -> Aff Foreign
request (Service service) (MethodName method) i =
  requestImpl service method i # fromEffectFnAff
