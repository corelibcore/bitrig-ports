# $OpenBSD: Makefile,v 1.16 2016/03/20 19:56:08 naddy Exp $

COMMENT= 	parse and convert to JSON (JavaScript Object Notation)

DISTNAME=	JSON-2.90
REVISION=	0
CATEGORIES=	converters
MODULES=	cpan
PKG_ARCH=	*

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-libwww
TEST_DEPENDS=	converters/p5-JSON-XS

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
