# Revision history for newtype-zoo

## 1.3.0.0 -- 2019-10-08

### Add some new types

* `Finished`
* `InProgress`
* `In`
* `Out`
* `Raw`
* `Initial`
* `Final`
* `Extended`
* `Expanded`
* `Collapsed`
* `Transformed`
* `Modefied`
* `Adapted`
* `Adjusted`
* `Processed`
* `Biased`
* `Saturated`
* `Reduced`
* `Simplified`
* `Reused`

### Add some time related types

* `NewtypeZoo.Time`
  * `NewtypeZoo.Time.Past`
  * `NewtypeZoo.Time.Present`
  * `NewtypeZoo.Time.Future`
  * `NewtypeZoo.Time.Before`
  * `NewtypeZoo.Time.After`
  * `NewtypeZoo.Time.Permanent`
  * `NewtypeZoo.Time.Temporary`

### Add new 2-parameter types

* `NewtypeZoo2`
  * `NewtypeZoo2.Un`
  * `NewtypeZoo2.Not`

## 1.2.0.0 -- 2019-09-27

* Add `Available`
* Add experimental two-parameter newtype wrappers:
  * `AvailableIn`
  * `ConsistentTo`
* Add comonad instances to a few wrappers. If this proves valuable,
  all type will get instances in a future release.

## 1.1.0.0 -- 2019-09-19

* Add module `NewtypeZoo` which exports all reexports all wrappers.
  [Proposed on reddit](https://www.reddit.com/r/haskell/comments/d6fiti/announcement_a_library_of_typical_newtype/f0sz4yv?utm_source=share&utm_medium=web2x) by user _Syrak_
* Document comparison to the `tagged` library, it was pointed out by users _gelisam_ and _davidwsd_
  [on reddit](https://www.reddit.com/r/haskell/comments/d6fiti/announcement_a_library_of_typical_newtype/f0tdyns?utm_source=share&utm_medium=web2x).

## 1.0.0.1 -- 2019-09-19

* Fix cabal file issues

## 1.0.0.0 -- 2019-09-19

* First version. Released on an unsuspecting world.
