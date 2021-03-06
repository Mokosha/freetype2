{-# LANGUAGE ForeignFunctionInterface #-}

module FreeType.Format.PFR.Internal
  ( -- ** FT_Get_PFR_Metrics
    ft_Get_PFR_Metrics'
    -- ** FT_Get_PFR_Kerning
  , ft_Get_PFR_Kerning'
    -- ** FT_Get_PFR_Advance
  , ft_Get_PFR_Advance'
  ) where

import           FreeType.Core.Base.Types
import           FreeType.Core.Types.Types

import           Foreign.Ptr

#include "ft2build.h"
#include FT_PFR_H

foreign import ccall "FT_Get_PFR_Metrics"
  ft_Get_PFR_Metrics'
    :: FT_Face      -- ^ face
    -> Ptr FT_UInt  -- ^ aoutline_resolution
    -> Ptr FT_UInt  -- ^ ametrics_resolution
    -> Ptr FT_Fixed -- ^ ametrics_x_scale
    -> Ptr FT_Fixed -- ^ ametrics_y_scale
    -> IO FT_Error



foreign import ccall "FT_Get_PFR_Kerning"
  ft_Get_PFR_Kerning'
    :: FT_Face       -- ^ face
    -> FT_UInt       -- ^ left
    -> FT_UInt       -- ^ right
    -> Ptr FT_Vector -- ^ avector
    -> IO FT_Error



foreign import ccall "FT_Get_PFR_Advance"
  ft_Get_PFR_Advance'
    :: FT_Face     -- ^ face
    -> FT_UInt     -- ^ gindex
    -> Ptr FT_Pos  -- ^ aadvance
    -> IO FT_Error
