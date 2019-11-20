module AWS.Request
       ( MethodName
       , request
       ) where

import Prelude

import AWS.Service (Service)
import Effect.Aff (Aff)
import Effect.Aff.Compat (EffectFnAff, fromEffectFnAff)
import Foreign (Foreign)

type MethodName = String

foreign import requestImpl :: Service -> MethodName -> Foreign -> EffectFnAff Foreign

request :: Service -> MethodName -> Foreign -> Aff Foreign
request service methodName i =
  requestImpl service methodName i # fromEffectFnAff
