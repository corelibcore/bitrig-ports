# $OpenBSD: Makefile,v 1.25 2013/11/09 18:22:02 zhuk Exp $

COMMENT =	Tcl/Tk-based manual browser

DISTNAME =	tkman-2.2
REVISION =	1
CATEGORIES =	misc 
HOMEPAGE =	http://www.sourceforge.net/projects/tkman

# Artistic License
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=tkman/}
MODULES =	x11/tk

RUN_DEPENDS =	${MODTK_RUN_DEPENDS} \
		textproc/rman \
		textproc/glimpse

NO_TEST =	Yes

pre-patch:
	perl -pi -e 's!\r\n$$!\n!g;' ${WRKSRC}/Makefile

do-install:
	@${MODTCL_WISH_ADJ} ${WRKSRC}/tkman ${WRKSRC}/retkman
	${INSTALL_SCRIPT} ${WRKSRC}/tkman ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/retkman ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tkman
	${INSTALL_DATA} ${WRKSRC}/manual.html ${PREFIX}/share/doc/tkman

.include <bsd.port.mk>
