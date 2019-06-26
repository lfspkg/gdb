/* TUI display registers in window.

   Copyright (C) 1998-2019 Free Software Foundation, Inc.

   Contributed by Hewlett-Packard Company.

   This file is part of GDB.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

#ifndef TUI_TUI_REGS_H
#define TUI_TUI_REGS_H

#include "tui/tui-data.h"  /* For struct tui_register_display_type.  */

extern void tui_check_register_values (struct frame_info *);
extern void tui_show_registers (struct reggroup *group);

#endif /* TUI_TUI_REGS_H */
