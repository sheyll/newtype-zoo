-- | Indicate that something is `Broken`.
module NewtypeZoo.Broken
  ( Broken(Broken)
  , _theBroken
  , theBroken
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

-- | A wrapper for something that is `Broken`.
newtype Broken a = Broken a
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

-- | An accessor function for something 'Broken'.
_theBroken :: Broken x -> x
_theBroken (Broken !x) = x
{-# INLINE _theBroken #-}

-- | A lens for something 'Broken'.
theBroken :: forall a b p f. (Profunctor p, Functor f) => p a (f b) -> p (Broken a) (f (Broken b))
theBroken = dimap _theBroken (fmap Broken)
{-# INLINE theBroken #-}
