# $OpenBSD: Makefile,v 1.17 2016/03/20 19:56:48 naddy Exp $

COMMENT=	use the GMP library for Math::BigInt routines

MODULES=	cpan
DISTNAME =	Math-BigInt-GMP-1.38
CATEGORIES=	math

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gmp>=6 perl

LIB_DEPENDS =	devel/gmp

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
