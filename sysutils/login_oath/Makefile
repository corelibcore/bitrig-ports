# $OpenBSD: Makefile,v 1.10 2015/12/03 21:24:32 sthen Exp $

COMMENT=	authentication provider for OATH one-time passwords

DISTNAME=	login_oath-0.8
REVISION=	3
CATEGORIES=	sysutils

MASTER_SITES=	https://spacehopper.org/mirrors/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c oath util

NO_TEST=	Yes

LIB_DEPENDS=	security/oath-toolkit

FAKE_FLAGS=	BINDIR=${PREFIX}/libexec/auth \
		MANDIR=${PREFIX}/man/man

post-install:
	${INSTALL_DATA} ${WRKSRC}/README \
	    ${PREFIX}/share/doc/pkg-readmes/${FULLPKGNAME}

.include <bsd.port.mk>
