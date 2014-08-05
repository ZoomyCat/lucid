V=20140510

PREFIX = /usr/local

BINPROGS = \
	checkpkg \
	lucidbuild \
	lddd \
	finddeps \
	find-libdeps \
	lucid-nspawn \
	mklucidroot \
	makechrootpkg

CONFIGFILES = \
	makepkg-i686.conf \
	makepkg-x86_64.conf \
	pacman-multilib.conf \
	pacman-default.conf

LUCIDBUILD_LINKS = \
	lucid-i686-build \
	lucid-x86_64-build \
	lucid-multilib-build \

all: $(BINPROGS)

edit = sed -e "s|@pkgdatadir[@]|$(DESTDIR)$(PREFIX)/share/devtools|g"

%: %.in Makefile lib/common.sh
	@echo "GEN $@"
	@$(RM) "$@"
	@m4 -P $@.in | $(edit) >$@
	@chmod a-w "$@"
	@chmod +x "$@"
	@bash -O extglob -n "$@"

clean:
	rm -f $(BINPROGS)

install:
	install -dm0755 $(DESTDIR)$(PREFIX)/bin
	install -dm0755 $(DESTDIR)$(PREFIX)/share/devtools
	install -m0755 ${BINPROGS} $(DESTDIR)$(PREFIX)/bin
	install -m0644 ${CONFIGFILES} $(DESTDIR)$(PREFIX)/share/devtools
	for l in ${LUCIDBUILD_LINKS}; do ln -sf lucidbuild $(DESTDIR)$(PREFIX)/bin/$$l; done
	ln -sf find-libdeps $(DESTDIR)$(PREFIX)/bin/find-libprovides

uninstall:
	for f in ${BINPROGS}; do rm -f $(DESTDIR)$(PREFIX)/bin/$$f; done
	for f in ${CONFIGFILES}; do rm -f $(DESTDIR)$(PREFIX)/share/devtools/$$f; done
	for l in ${LUCIDBUILD_LINKS}; do rm -f $(DESTDIR)$(PREFIX)/bin/$$l; done
	rm -f $(DESTDIR)$(PREFIX)/bin/find-libprovides

dist:
	git archive --format=tar --prefix=devtools-$(V)/ $(V) | gzip -9 > devtools-$(V).tar.gz
	gpg --detach-sign --use-agent devtools-$(V).tar.gz

.PHONY: all clean install uninstall dist upload
