BINDIR=/usr/bin
MANDIR=/usr/share/man
CONFDIR=/etc
VERSION=2.27

all:
	@echo make install          to install the software
	@echo make install-config   to install example configuration
	@echo make uninstall        to remove the software and configuration
	@echo make uninstall-config to remove the configuration
	@echo make pkg		    to create a solaris .pkg
	@echo make rpm		    to create a .rpm

install:
	if test ! -d $(DESTDIR)/$(BINDIR) ; then mkdir -p $(DESTDIR)/$(BINDIR) ; fi
	install -m 755 ibackup $(DESTDIR)/$(BINDIR)/
	install -m 755 sysconf $(DESTDIR)/$(BINDIR)/
	if test ! -d $(MANDIR)/man1 ; then mkdir -p $(MANDIR)/man1; fi
	install -c -m 644 ibackup.1.gz $(MANDIR)/man1/
	install -c -m 644 sysconf.1.gz $(MANDIR)/man1/

install-config:
	if test ! -d $(DESTDIR)/$(CONFDIR) ; then mkdir -p $(DESTDIR)/$(CONFDIR) ; fi
	install -m 600 ibackup.conf $(DESTDIR)/etc

uninstall:
	rm -f $(DESTDIR)/$(BINDIR)/ibackup
	rm -f $(DESTDIR)/$(BINDIR)/sysconf
	rm -f $(MANDIR)/man1/ibackup.1.gz
	rm -f $(MANDIR)/man1/sysconf.1.gz

uninstall-config:
	rm -f $(DESTDIR)/etc/ibackup.conf

clean:
	rm -rf sol/*

pkg:
	pkgmk -o -d ./sol/
	pkgtrans -s ./sol/ ibackup-${VERSION}-sol-all.pkg ibackup

rpm:
	mkdir -p /usr/src/rpm/SOURCES/
	mkdir -p /usr/src/rpm/BUILD
	cp ../ibackup-${VERSION}.tar.gz /usr/src/rpm/SOURCES/
	rpm -bb ibackup.spec
