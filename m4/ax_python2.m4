# ===========================================================================
#         http://www.gnu.org/software/autoconf-archive/ax_python.html
# ===========================================================================
#
# SYNOPSIS
#
#   AX_PYTHON2
#
# DESCRIPTION
#
#   This macro does a complete Python development environment check.
#
#   It recurses through several python versions (from 2.1 to 2.7 in this
#   version), looking for an executable. When it finds an executable, it
#   looks to find the header files and library.
#
#   It sets PYTHON2_BIN to the name of the python executable,
#   PYTHON2_INCLUDE_DIR to the directory holding the header files, and
#   PYTHON2_LIB to the name of the Python library.
#
#   This macro calls AC_SUBST on PYTHON2_BIN (via AC_CHECK_PROG),
#   PYTHON2_INCLUDE_DIR and PYTHON2_LIB.
#
# MODIFIED
#
#   Changed by Matthew Skala, April 2 2012, to look specifically for
#   Python 2 as opposed to 3.
#
# LICENSE
#
#   Copyright (c) 2008 Michael Tindal
#
#   This program is free software; you can redistribute it and/or modify it
#   under the terms of the GNU General Public License as published by the
#   Free Software Foundation; either version 2 of the License, or (at your
#   option) any later version.
#
#   This program is distributed in the hope that it will be useful, but
#   WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
#   Public License for more details.
#
#   You should have received a copy of the GNU General Public License along
#   with this program. If not, see <http://www.gnu.org/licenses/>.
#
#   As a special exception, the respective Autoconf Macro's copyright owner
#   gives unlimited permission to copy, distribute and modify the configure
#   scripts that are the output of Autoconf when processing the Macro. You
#   need not follow the terms of the GNU General Public License when using
#   or distributing such scripts, even though portions of the text of the
#   Macro appear in them. The GNU General Public License (GPL) does govern
#   all other use of the material that constitutes the Autoconf Macro.
#
#   This special exception to the GPL applies to versions of the Autoconf
#   Macro released by the Autoconf Archive. When you make and distribute a
#   modified version of the Autoconf Macro, you may extend this special
#   exception to the GPL to apply to your modified version as well.

#serial 9

AC_DEFUN([AX_PYTHON2],
[AC_MSG_CHECKING(for python build information)
AC_MSG_RESULT([])
for python in python2.7 python2.6 python2.5 python2.4 python2.3 python2.2 python2.1 python2 python; do
AC_CHECK_PROGS(PYTHON2_BIN, [$python])
ax_python2_bin=$PYTHON2_BIN
if test x$ax_python2_bin != x; then
   AC_CHECK_LIB($ax_python2_bin, main, ax_python2_lib=$ax_python2_bin, ax_python2_lib=no)
   AC_CHECK_HEADER([$ax_python2_bin/Python.h],
   [[ax_python2_header=`locate $ax_python2_bin/Python.h | sed -e s,/Python.h,,`]],
   ax_python2_header=no)
   if test $ax_python2_lib != no; then
     if test $ax_python2_header != no; then
       break;
     fi
   fi
fi
done
if test x$ax_python2_bin = x; then
   ax_python2_bin=no
fi
if test x$ax_python2_header = x; then
   ax_python2_header=no
fi
if test x$ax_python2_lib = x; then
   ax_python2_lib=no
fi

AC_MSG_RESULT([  results of the Python2 check:])
AC_MSG_RESULT([    Binary:      $ax_python2_bin])
AC_MSG_RESULT([    Library:     $ax_python2_lib])
AC_MSG_RESULT([    Include Dir: $ax_python2_header])

if test x$ax_python2_header != xno; then
  PYTHON2_INCLUDE_DIR=$ax_python2_header
  AC_SUBST(PYTHON2_INCLUDE_DIR)
fi
if test x$ax_python2_lib != xno; then
  PYTHON2_LIB=$ax_python2_lib
  AC_SUBST(PYTHON2_LIB)
fi
])dnl
