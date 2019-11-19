module AWS.Request.Types where

import Prelude

import Data.DateTime.Instant (Instant)

newtype Timestamp = Timestamp Instant
instance showTimestamp :: Show Timestamp where
  show (Timestamp i) = "(Timestamp " <> show i <> ")"
