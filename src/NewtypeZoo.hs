{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE TypeOperators #-}
-- | General Purpose Newtype Wrappers
--
-- A zoo of /newtype/ wrappers.
--
-- In everyday Haskell programming newtype wrappers occur again and again, to
-- convey some extra meaning for the maintainer of the code, and to prevent
-- mixing up parameters to functions with the same type.
--
-- For example:
--
-- @
-- applyConfiguration :: MyConfig -> MyConfig -> IO MyConfig
-- @
--
-- What the user actually wanted to express was:
--
-- @
-- applyConfiguration :: `Wanted` MyConfig -> `Current` MyConfig -> IO (`Active` MyConfig)
-- @
module NewtypeZoo
  (
    module X
  ) where

import NewtypeZoo.Wanted as X
import NewtypeZoo.Valid as X
import NewtypeZoo.Updated as X
import NewtypeZoo.Unwanted as X
import NewtypeZoo.Unchecked as X
import NewtypeZoo.Single as X
import NewtypeZoo.Responded as X
import NewtypeZoo.Required as X
import NewtypeZoo.Requested as X
import NewtypeZoo.Replied as X
import NewtypeZoo.Remaining as X
import NewtypeZoo.Rejected as X
import NewtypeZoo.Proposed as X
import NewtypeZoo.Previous as X
import NewtypeZoo.Pending as X
import NewtypeZoo.Partial as X
import NewtypeZoo.Old as X
import NewtypeZoo.Offered as X
import NewtypeZoo.Obsolete as X
import NewtypeZoo.Next as X
import NewtypeZoo.New as X
import NewtypeZoo.Needed as X
import NewtypeZoo.Multiple as X
import NewtypeZoo.Missing as X
import NewtypeZoo.Marked as X
import NewtypeZoo.Invalid as X
import NewtypeZoo.Inconsistent as X
import NewtypeZoo.Failed as X
import NewtypeZoo.Existing as X
import NewtypeZoo.Established as X
import NewtypeZoo.Enabled as X
import NewtypeZoo.Disabled as X
import NewtypeZoo.Current as X
import NewtypeZoo.Consistent as X
import NewtypeZoo.Completed as X
import NewtypeZoo.Complete as X
import NewtypeZoo.Cached as X
import NewtypeZoo.Broken as X
import NewtypeZoo.Available as X
import NewtypeZoo.Allocated as X
import NewtypeZoo.Active as X
