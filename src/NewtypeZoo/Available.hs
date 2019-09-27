-- | Indicate that something is `Available`.
module NewtypeZoo.Available
  ( Available(Available)
  , _theAvailable
  , theAvailable
  , AvailableIn(AvailableIn)
  , _theAvailableIn
  , theAvailableIn
  ) where

import           Control.Comonad (Comonad)
import           Control.DeepSeq (NFData)
import           Control.Monad.Fix (MonadFix)
import           Control.Monad.Zip (MonadZip)
import           Data.Bits       (Bits,FiniteBits)
import           Data.Copointed  (Copointed)
import           Data.Default    (Default)
import           Data.Functor.Classes (Eq1, Ord1, Read1, Show1)
import           Data.Functor.Identity
import           Data.Ix         (Ix)
import           Data.Profunctor (Profunctor, dimap)
import           Data.Pointed    (Pointed)
import           Data.String     (IsString)
import           Data.Typeable   (Typeable)
import           Foreign.Storable (Storable)
import           GHC.Generics    (Generic, Generic1)
import           System.Random   (Random)
import           Test.QuickCheck (Arbitrary)

-- | A wrapper for something that is `Available`.
newtype Available a = Available a
  deriving ( Eq
           , Ord
           , Read
           , Show
           , NFData
           , Foldable
           , Traversable
           , Functor
           , Default
           , Monoid
           , Semigroup
           , Typeable
           , Generic
           , Generic1
           , Random
           , Arbitrary
           , Bounded
           , Enum
           , Floating
           , Fractional
           , Integral
           , Num
           , Real
           , RealFloat
           , RealFrac
           , Ix
           , IsString
           , Bits
           , FiniteBits
           )
  deriving ( Eq1
           , Ord1
           , Read1
           , Show1
           , Pointed
           , Copointed
           , Applicative
           , MonadFix
           , Monad
           , MonadZip
           , Comonad
           )
           via Identity

-- | An accessor function for something 'Available'.
_theAvailable :: Available x -> x
_theAvailable (Available !x) = x
{-# INLINE _theAvailable #-}

-- | A lens for something 'Available'.
theAvailable :: forall a b p f. (Profunctor p, Functor f) => p a (f b) -> p (Available a) (f (Available b))
theAvailable = dimap _theAvailable (fmap Available)
{-# INLINE theAvailable #-}

-- | A wrapper for something that is `AvailableIn` with respect to some context
-- indicated by a (phantom-) type.
newtype AvailableIn ctx a = AvailableIn a
  deriving ( Eq
           , Ord
           , Read
           , Show
           , NFData
           , Foldable
           , Traversable
           , Functor
           , Default
           , Monoid
           , Semigroup
           , Typeable
           , Generic
           , Generic1
           , Random
           , Arbitrary
           , Bounded
           , Enum
           , Floating
           , Fractional
           , Integral
           , Num
           , Real
           , RealFloat
           , RealFrac
           , Ix
           , IsString
           , Bits
           , FiniteBits
           )
  deriving ( Eq1
           , Ord1
           , Read1
           , Show1
           , Pointed
           , Copointed
           , Applicative
           , MonadFix
           , Monad
           , MonadZip
           , Comonad
           )
           via Identity

-- | An accessor function for something 'AvailableIn'.
_theAvailableIn :: AvailableIn ctx x -> x
_theAvailableIn (AvailableIn !x) = x
{-# INLINE _theAvailableIn #-}

-- | A lens for something 'AvailableIn'.
theAvailableIn :: forall ctx a b p f. (Profunctor p, Functor f) => p a (f b) -> p (AvailableIn ctx a) (f (AvailableIn ctx b))
theAvailableIn = dimap _theAvailableIn (fmap AvailableIn)
{-# INLINE theAvailableIn #-}
