{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

{- | Please refer to the
     [Miscellaneous > The TrueType Engine](https://www.freetype.org/freetype2/docs/reference/ft2-truetype_engine.html)
     chapter of the reference.

     Internal: "FreeType.Miscellaneous.TrueType.Internal".
 -}

module FreeType.Miscellaneous.TrueType
  ( -- ** FT_TrueTypeEngineType
    FT_TrueTypeEngineType
    -- | 'FT_TRUETYPE_ENGINE_TYPE_UNPATENTED' is deprecated.
  , pattern FT_TRUETYPE_ENGINE_TYPE_NONE
  , pattern FT_TRUETYPE_ENGINE_TYPE_PATENTED
    -- ** FT_Get_TrueType_Engine_Type
  , ft_Get_TrueType_Engine_Type
  ) where

import           FreeType.Core.Base.Types
import           FreeType.Miscellaneous.TrueType.Internal (pattern FT_TRUETYPE_ENGINE_TYPE_UNPATENTED)
import           FreeType.Miscellaneous.TrueType.Types

#include "ft2build.h"
#include FT_MODULE_H

pattern FT_TRUETYPE_ENGINE_TYPE_NONE
      , FT_TRUETYPE_ENGINE_TYPE_PATENTED
     :: (Eq a, Num a) => a
pattern FT_TRUETYPE_ENGINE_TYPE_NONE     = #const FT_TRUETYPE_ENGINE_TYPE_NONE
pattern FT_TRUETYPE_ENGINE_TYPE_PATENTED = #const FT_TRUETYPE_ENGINE_TYPE_PATENTED



foreign import ccall "FT_Get_TrueType_Engine_Type"
  ft_Get_TrueType_Engine_Type
    :: FT_Library               -- ^ library
    -> IO FT_TrueTypeEngineType
