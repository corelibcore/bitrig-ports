# $OpenBSD: Makefile,v 1.17 2015/02/16 22:57:13 naddy Exp $
# $RuOBSD: Makefile,v 1.3 2002/04/28 16:29:29 grange Exp $

COMMENT=		proxy-cache-servers logfiles analizer

DISTNAME=		calamaris-2.59
REVISION=		0
CATEGORIES=		www sysutils

HOMEPAGE=		http://cord.de/tools/squid/calamaris/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://cord.de/tools/squid/calamaris/

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/calamaris ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/calamaris.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/calamaris
	${INSTALL_DATA} ${WRKSRC}/EXAMPLES ${PREFIX}/share/doc/calamaris
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/calamaris

.include <bsd.port.mk>
