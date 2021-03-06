-- | Indicate that something is `Consistent`.
module NewtypeZoo.Consistent
  ( Consistent(Consistent)
  , _theConsistent
  , theConsistent
  , ConsistentTo(ConsistentTo)
  , _theConsistentTo
  , theConsistentTo
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

-- | A wrapper for something that is `Consistent`.
newtype Consistent a = Consistent a
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

-- | An accessor function for something 'Consistent'.
_theConsistent :: Consistent x -> x
_theConsistent (Consistent !x) = x
{-# INLINE _theConsistent #-}

-- | A lens for something 'Consistent'.
theConsistent :: forall a b p f. (Profunctor p, Functor f) => p a (f b) -> p (Consistent a) (f (Consistent b))
theConsistent = dimap _theConsistent (fmap Consistent)
{-# INLINE theConsistent #-}


-- | A wrapper for something that is `ConsistentTo` some context
-- indicated by a (phantom-) type.
newtype ConsistentTo ctx a = ConsistentTo a
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

-- | An accessor function for something 'ConsistentTo'.
_theConsistentTo :: ConsistentTo ctx x -> x
_theConsistentTo (ConsistentTo !x) = x
{-# INLINE _theConsistentTo #-}

-- | A lens for something 'ConsistentTo'.
theConsistentTo :: forall ctx a b p f. (Profunctor p, Functor f) => p a (f b) -> p (ConsistentTo ctx a) (f (ConsistentTo ctx b))
theConsistentTo = dimap _theConsistentTo (fmap ConsistentTo)
{-# INLINE theConsistentTo #-}
