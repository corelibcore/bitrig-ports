# $OpenBSD: Makefile,v 1.19 2013/03/11 11:23:58 espie Exp $

COMMENT=	yet another dump utility

DISTNAME=	xd-8087
REVISION=	2
CATEGORIES=	misc

# BSD 
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MAKE_FLAGS=	CC="${CC}" 
FAKE_FLAGS=	CC="${CC}" BINDIR=${PREFIX}/bin MANDIR=${PREFIX}/man/man

.include <bsd.port.mk>
