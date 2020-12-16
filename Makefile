PREFIX ?= /usr
FACESDEST ?= /usr/share

all:
	@echo Run \'make install\' to install faceless-says.

install:
	@mkdir -p  ${FACESDEST}/faces
	@cp    -r  faces/* $(FACESDEST)/faces
	@chmod 755 $(FACESDEST)/faces/*
	
	@cp    -p  faceless-says $(DESTDIR)$(PREFIX)/bin/faceless-says
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/faceless-says

uninstall:
	@rm -rf $(FACESDEST)/faces/
	@rm -rf $(DESTDIR)$(PREFIX)/bin/faceless-says