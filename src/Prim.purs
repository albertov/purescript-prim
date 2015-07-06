module Prim where

-- | A JavaScript function, which takes values of the first type, and
-- | returns values of the second.
-- |
-- | The type constructor `(->)` is syntactic sugar for this type constructor.
-- | It is recommended to use `(->)` rather than `Function`, where possible.
-- |
-- | That is, prefer this:
-- |
-- | * `f :: Number -> Number`
-- |
-- | to either of these:
-- |
-- | * `f :: Function Number Number`
-- | * `f :: (->) Number Number`
foreign import data Function :: * -> * -> *

-- | A JavaScript Array.
foreign import data Array :: * -> *

-- | A JavaScript Object.
-- |
-- | The type signature here means that the `Object` type constructor takes
-- | a row of concrete types. For example:
-- |
-- | * `type Person = Object (name :: String, age :: Number)`
-- |
-- | The syntactic sugar with curly braces `{ }` is generally preferred:
-- |
-- | * `type Person = { name :: String, age :: Number }`
foreign import data Object :: # * -> *

-- | A JavaScript 32-bit signed integer. See the purescript-integers package
-- | for more details.
-- |
-- | Construct values of this type with literals:
-- | * `x = 23 :: Int`
foreign import data Int :: *

-- | A JavaScript Number: double precision floating point (IEEE 754).
-- |
-- | Construct values of this type with literals:
-- | * `y = 35.23 :: Number`
-- | * `z = 1.224e6 :: Number`
foreign import data Number :: *

-- | A single character. The JavaScript representation is a normal String with
-- | a single character.
-- |
-- | Construct values of this type with literals, using single quotes `'`:
-- | * `x = '0'`
foreign import data Char :: *

-- | A JavaScript String.
-- |
-- | Construct values of this type with literals, using double quotes `"`:
-- | * `x = "hello, world" :: String`
-- |
-- | Multi-line string literals are also supported with triple quotes (`"""`).
foreign import data String :: *

-- | A JavaScript Boolean value.
-- |
-- | Construct values of this type with the literals `true` and `false`.
foreign import data Boolean :: *
