#include <ft2build.h>
#include FT_FREETYPE_H
#include FT_COLOR_H



FT_BEGIN_HEADER

  FT_EXPORT ( FT_Error )
  FT_Palette_Set_Foreground_Color_Plus ( FT_Face   face
                                       , FT_Color *foreground_color
                                       );

FT_END_HEADER
