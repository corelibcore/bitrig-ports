# $OpenBSD: Makefile,v 1.20 2015/02/16 22:57:12 naddy Exp $

COMMENT=	simple and easy to use TCP port scanner

DISTNAME=	PortScanner-1.2
PKGNAME=	${DISTNAME:L}
REVISION=	0
CATEGORIES=	security
MASTER_SITES=	${MASTER_SITE_PACKETSTORM:=UNIX/scanners/}

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

SEPARATE_BUILD=	Yes

NO_TEST=	Yes

do-build:
	${CC} ${CFLAGS} -Wall ${WRKSRC}/portscanner.c \
		-o ${WRKBUILD}/portscanner
	@sed -e s#portscan#portscanner#g ${WRKSRC}/portscan.1 > \
		${WRKBUILD}/portscanner.1

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/portscanner ${PREFIX}/bin
	${INSTALL_DATA} ${WRKBUILD}/portscanner.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
