/**
 * Marlin 3D Printer Firmware
 * Copyright (C) 2016 MarlinFirmware [https://github.com/MarlinFirmware/Marlin]
 *
 * Based on Sprinter and grbl.
 * Copyright (C) 2011 Camiel Gubbels / Erik van der Zalm
 * 
 * This part was addes by Arie Johan van de Werken, May 2016
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 */

#include "delta_plane_leveling.h"

#ifdef DELTA_PLANE_LEVELING

delta_plane_leveling dpl;

delta_plane_leveling::delta_plane_leveling() 
{  
  // Calculate vectors (all starting in center)
  x[0]=DELTA_CALIBRATION_P0_X; y[0]=DELTA_CALIBRATION_P0_Y; z[0]=DELTA_CALIBRATION_P0_Z-DELTA_CALIBRATION_PC_Z;
  x[1]=DELTA_CALIBRATION_P1_X; y[1]=DELTA_CALIBRATION_P1_Y; z[1]=DELTA_CALIBRATION_P1_Z-DELTA_CALIBRATION_PC_Z;
  x[2]=DELTA_CALIBRATION_P2_X; y[2]=DELTA_CALIBRATION_P2_Y; z[2]=DELTA_CALIBRATION_P2_Z-DELTA_CALIBRATION_PC_Z;
  x[3]=DELTA_CALIBRATION_P3_X; y[3]=DELTA_CALIBRATION_P3_Y; z[3]=DELTA_CALIBRATION_P3_Z-DELTA_CALIBRATION_PC_Z;
  x[4]=DELTA_CALIBRATION_P4_X; y[4]=DELTA_CALIBRATION_P4_Y; z[4]=DELTA_CALIBRATION_P4_Z-DELTA_CALIBRATION_PC_Z;
  x[5]=DELTA_CALIBRATION_P5_X; y[5]=DELTA_CALIBRATION_P5_Y; z[5]=DELTA_CALIBRATION_P5_Z-DELTA_CALIBRATION_PC_Z;

  // Plane defintion ax + bx + cz = 0;
  a[0]=y[0]*z[1]-z[0]*y[1]; b[0]=z[0]*x[1]-x[0]*z[1]; c[0]=x[0]*y[1]-y[0]*x[1];
  a[1]=y[1]*z[2]-z[1]*y[2]; b[1]=z[1]*x[2]-x[1]*z[2]; c[1]=x[1]*y[2]-y[1]*x[2];
  a[2]=y[2]*z[3]-z[2]*y[3]; b[2]=z[2]*x[3]-x[2]*z[3]; c[2]=x[2]*y[3]-y[2]*x[3];
  a[3]=y[3]*z[4]-z[3]*y[4]; b[3]=z[3]*x[4]-x[3]*z[4]; c[3]=x[3]*y[4]-y[3]*x[4];
  a[4]=y[4]*z[5]-z[4]*y[5]; b[4]=z[4]*x[5]-x[4]*z[5]; c[4]=x[4]*y[5]-y[4]*x[5];
  a[5]=y[5]*z[0]-z[5]*y[0]; b[5]=z[5]*x[0]-x[5]*z[0]; c[5]=x[5]*y[0]-y[5]*x[0];

  z_offset = DELTA_CALIBRATION_PC_Z - DELTA_CALIBRATION_Z_SPACING;
}

float delta_plane_leveling::get_z(float x0, float y0)
{
  int idx;
  
  #define TAN30  0.57735
  // Calculate which plane without using atan2  
  if( x0 > 0.0 )      idx = (fabs(y0/x0)<TAN30)?4:((y0>0.0)?5:3);
  else if( x0 < 0.0 ) idx = (fabs(y0/x0)<TAN30)?1:((y0>0.0)?0:2);
  else                idx = ( y0 > 0.0 )?5:2;    
  return (a[idx]*x0 + b[idx]*y0) / c[idx] - z_offset;
}
    
#endif  // DELTA_PLANE_LEVELING
