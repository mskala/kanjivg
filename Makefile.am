## Process this file with automake to produce Makefile.in

ACLOCAL_AMFLAGS = -I m4

KANJI_NAMES := $(patsubst XML/%.xml,%,$(wildcard XML/*.xml))
XML_FILES := $(patsubst %,XML/%.xml,$(KANJI_NAMES))
SVG_FILES := $(patsubst %,SVG/%.svg,$(KANJI_NAMES))

MOSTLYCLEANFILES = \
   kanji/*.svg kanji_mismatch/*.svg

pkgdata_DATA = \
  kanji/.generated

kanji/.generated: \
  mergexml.py $(XML_FILES) $(SVG_FILES)
	rm -rf kanji/ kanji_mismatch/
	$(PYTHON_BIN)2 mergexml.py
	touch kanji/.generated

check:
	$(PERL) test/run-tests
