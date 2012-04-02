#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

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
AX_PYTHON2
AC_ARG_VAR([ZIP],[zip])
AC_PATH_PROG([ZIP],[zip])

# Checks for libraries.

# Checks for header files.

# Checks for typedefs, structures, and compiler characteristics.

# Checks for library functions.

AC_CONFIG_FILES([Makefile])
AC_OUTPUT
