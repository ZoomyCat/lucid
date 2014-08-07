
install:
	install -D -m 0755 bin/keyboardctl $(DESTDIR)/usr/bin/keyboardctl
	ln -sf keyboardctl $(DESTDIR)/usr/bin/kbctl
	install -D -m 0755 bin/ckbcomp $(DESTDIR)/usr/bin/ckbcomp
	install -D -m 0644 data/keyboard.conf $(DESTDIR)/etc/keyboard.conf
	install -D -m 0644 data/keyboardctl.service $(DESTDIR)/usr/lib/systemd/system/keyboardctl.service
	mkdir -p $(DESTDIR)/var/lib/keyboardctl
