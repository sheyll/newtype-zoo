# General Purpose Newtype Wrappers

**A zoo of `newtype` wrappers.**

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

This simple library contains a list of simple newtype wrappers:

* `Active`
* `Allocated`
* `Broken`
* `Cached`
* `Complete`
* `Completed`
* `Consistent`
* `Current`
* `Disabled`
* `Enabled`
* `Established`
* `Existing`
* `Failed`
* `Inconsistent`
* `Invalid`
* `Marked`
* `Missing`
* `Multiple`
* `Needed`
* `New`
* `Next`
* `Obsolete`
* `Offered`
* `Old`
* `Partial`
* `Pending`
* `Previous`
* `Proposed`
* `Rejected`
* `Remaining`
* `Replied`
* `Required`
* `Requested`
* `Responded`
* `Single`
* `Unchecked`
* `Unwanted`
* `Updated`
* `Valid`
* `Wanted`

They live in the sub directory `NewtypeZoo`, e.g. `NewtypeZoo.Active`.
