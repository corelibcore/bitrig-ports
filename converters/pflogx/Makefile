# $OpenBSD: Makefile,v 1.14 2015/11/24 09:11:03 jasper Exp $

COMMENT=		convert pf(4) logs to XML

DISTNAME=		pflogx_086
PKGNAME=		pflogx-0.86
REVISION=		5
CATEGORIES=		converters

HOMEPAGE=		http://akldev.free.fr/pflogx/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB= 		c expat m pcap
WANTLIB+=		c++ c++abi pthread

MASTER_SITES=		${HOMEPAGE}/releases/ \
			https://distfiles.nl/

MAKE_FLAGS=		WITH_EXPAT=1 \
			EXPAT_INCLUDEDIR="${X11BASE}/include" \
			EXPAT_LIBDIR="${X11BASE}/lib"

NO_TEST=		Yes

WRKDIST=		${WRKDIR}/pflogx/

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/pflogx ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pflogx/
	${INSTALL_DATA_DIR} ${PREFIX}/share/pflogx/{dtd,xsl}/
	${INSTALL_DATA} ${WRKSRC}/{README,Changelog} ${PREFIX}/share/doc/pflogx/
	${INSTALL_DATA} ${WRKSRC}/dtd/export.dtd ${PREFIX}/share/pflogx/dtd/
	${INSTALL_DATA} ${WRKSRC}/xsl/* ${PREFIX}/share/pflogx/xsl/

.include <bsd.port.mk>
