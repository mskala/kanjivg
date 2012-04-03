## Process this file with automake to produce Makefile.in

#
# Makefile description for KanjiVG
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


ACLOCAL_AMFLAGS = -I m4

KANJI_NAMES := $(patsubst kanji/%.svg,%,$(wildcard kanji/*.svg))

pkgdata_DATA = \
  kanjivg-@release_date@.xml.gz \
  kanjivg-@release_date@-all.zip

kanjivg.xml: kvg.py $(wildcard kanji/*.svg)
	$(PYTHON_BIN)2 kvg.py release

kanjivg-@release_date@-all.zip: $(wildcard kanji/*.svg)
	zip -r $@ kanji

kanjivg-@release_date@.xml.gz: kanjivg.xml
	gzip -c kanjivg.xml >$@

check:
	rm -rf test_logs
	$(PERL) -CDS test/run-tests

# check only the SVG files that are newer than their logs
check-new:
	$(PERL) -CDS test/run-tests -n
