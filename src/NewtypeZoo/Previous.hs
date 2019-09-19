-- | Indicate that something is the `Previous` one.
module NewtypeZoo.Previous
  ( Previous(Previous)
  , _thePrevious
  , thePrevious
  ) where

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

newtype Previous a = Previous a
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

           )
           via Identity

_thePrevious :: Previous x -> x
_thePrevious (Previous !x) = x
{-# INLINE _thePrevious #-}

thePrevious :: forall a b p f. (Profunctor p, Functor f) => p a (f b) -> p (Previous a) (f (Previous b))
thePrevious = dimap _thePrevious (fmap Previous)
{-# INLINE thePrevious #-}
