#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

#
# configure script description for KanjiVG
# Copyright (C) 2012  Matthew Skala
#
# This program is dual licensed.  At your option, you may follow either of
# the two license notices below.
#
# Matthew Skala
# http://ansuz.sooke.bc.ca/
# mskala@ansuz.sooke.bc.ca
#
# GPL license:
#
#    This program is free software: you can redistribute it and/or modify it
#    under the terms of the GNU General Public License as published by the
#    Free Software Foundation, either version 3 of the License, or (at your
#    option) any later version.
#
#    This program is distributed in the hope that it will be useful, but
#    WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
#    General Public License for more details.
#
#    You should have received a copy of the GNU General Public License along
#    with this program.  If not, see <http://www.gnu.org/licenses/>.
#
# Creative Commons license:
#
#    This work is made available under the terms of the Creative Commons
#    Attribution-ShareAlike 3.0 license,
#    http://creativecommons.org/licenses/by-sa/3.0/.
#

########################################################################

AC_PREREQ([2.68])
AC_INIT([KanjiVG], [0.0], [kanjivg@googlegroups.com], [kanjivg],
        [http://kanjivg.tagaini.net/])
AC_PRESERVE_HELP_ORDER
AM_INIT_AUTOMAKE([foreign check-news silent-rules])
AC_CONFIG_SRCDIR([kvg.py])
AC_CONFIG_MACRO_DIR([m4])
AC_COPYRIGHT([Copyright (C) 2009, 2010, 2011, 2012 Ulrich Apel])
AM_SILENT_RULES
AC_SUBST([release_date],[`date +%Y%m%d`])

# Checks for programs.
AC_PROG_LN_S
AX_CHECK_GNU_MAKE
AC_ARG_VAR([GZIP],[gzip])
AC_PATH_PROG([GZIP],[gzip])
AC_ARG_VAR([PERL],[Perl])
AC_PATH_PROG([PERL],[perl])
AX_PYTHON
AC_ARG_VAR([ZIP],[zip])
AC_PATH_PROG([ZIP],[zip])

# Checks for libraries.

# Checks for header files.

# Checks for typedefs, structures, and compiler characteristics.

# Checks for library functions.

AC_CONFIG_FILES([Makefile])
AC_OUTPUT
