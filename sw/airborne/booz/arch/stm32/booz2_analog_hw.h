/*
 * $Id: booz2_analog_hw.h 4172 2009-09-18 11:57:13Z flixr $
 *
 * Copyright (C) 2008-2009 Antoine Drouin <poinix@gmail.com>
 *
 * This file is part of paparazzi.
 *
 * paparazzi is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2, or (at your option)
 * any later version.
 *
 * paparazzi is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with paparazzi; see the file COPYING.  If not, write to
 * the Free Software Foundation, 59 Temple Place - Suite 330,
 * Boston, MA 02111-1307, USA.
 */

#ifndef BOOZ2_ANALOG_HW_H
#define BOOZ2_ANALOG_HW_H

#include "std.h"

static inline void Booz2AnalogSetDAC(uint16_t x) {}

extern void booz2_analog_init_hw(void);

#endif /* BOOZ2_ANALOG_HW_H */
