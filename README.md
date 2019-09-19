# General Purpose Newtype Wrappers

**A zoo of `newtype` wrappers.**

* [newtype-zoo on Hackage](https://hackage.haskell.org/package/newtype-zoo)

In everyday Haskell programming newtype wrappers occur again and again, to
convey some extra meaning for the maintainer of the code, and to prevent
mixing up parameters to functions with the same type.

For example:

```haskell
applyConfiguration :: MyConfig -> MyConfig -> IO MyConfig
```

What the user actually wanted to express was:

```haskell
applyConfiguration :: Wanted MyConfig -> Current MyConfig -> IO (Active MyConfig)
```

The newtype wrappers in this library are all exported by
the [`NewtypeZoo`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo.html) module, or can
be imported individually.

This simple library contains a variety of simple newtype wrappers:

* [`Active`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Active.html)
* [`Allocated`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Allocated.html)
* [`Broken`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Broken.html)
* [`Cached`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Cached.html)
* [`Complete`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Complete.html)
* [`Completed`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Completed.html)
* [`Consistent`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Consistent.html)
* [`Current`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Current.html)
* [`Disabled`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Disabled.html)
* [`Enabled`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Enabled.html)
* [`Established`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Established.html)
* [`Existing`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Existing.html)
* [`Failed`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Failed.html)
* [`Inconsistent`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Inconsistent.html)
* [`Invalid`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Invalid.html)
* [`Marked`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Marked.html)
* [`Missing`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Missing.html)
* [`Multiple`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Multiple.html)
* [`Needed`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Needed.html)
* [`New`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-New.html)
* [`Next`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Next.html)
* [`Obsolete`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Obsolete.html)
* [`Offered`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Offered.html)
* [`Old`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Old.html)
* [`Partial`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Partial.html)
* [`Pending`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Pending.html)
* [`Previous`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Previous.html)
* [`Proposed`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Proposed.html)
* [`Rejected`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Rejected.html)
* [`Remaining`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Remaining.html)
* [`Replied`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Replied.html)
* [`Required`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Required.html)
* [`Requested`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Requested.html)
* [`Responded`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Responded.html)
* [`Single`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Single.html)
* [`Unchecked`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Unchecked.html)
* [`Unwanted`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Unwanted.html)
* [`Updated`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Updated.html)
* [`Valid`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Valid.html)
* [`Wanted`](https://hackage.haskell.org/package/newtype-zoo/docs/NewtypeZoo-Wanted.html)

They live in the sub directory `NewtypeZoo`, e.g. `NewtypeZoo.Active`.

This library offers **shorter code** for the special cases.
The `tagged` library is more general, but requires **more code**.

The reason why I prefer this library in some cases, is shorter type signatures.

One can even combine `tagged` with `newtype-zoo` (I think I will add this to the README):

```haskell

import Data.Tagged
import NewtypeZoo.Current
import NewtypeZoo.Wanted

applyConfigurationTagged
  :: Tagged Wanted MyConfig
  -> Tagged Current MyConfig
  -> IO (Tagged Current MyConfig)

```
