# $OpenBSD: Makefile,v 1.3 2015/12/03 21:24:29 sthen Exp $

COMMENT=	retrieve CDDB ID from a disc

DISTNAME=	cd-discid-upstream-1.3.1
PKGNAME=	${DISTNAME:S/-upstream//}
REVISION=	0

CATEGORIES=	audio

HOMEPAGE=	https://github.com/taem/cd-discid

# XXX
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	https://spacehopper.org/mirrors/

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cd-discid ${PREFIX}/bin/cd-discid
	${INSTALL_DATA} ${WRKSRC}/cd-discid.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
