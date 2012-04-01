## Process this file with automake to produce Makefile.in

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
