# $OpenBSD: Makefile,v 1.13 2016/03/20 19:56:40 naddy Exp $

COMMENT=	factory for Tree::Simple visitor objects

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Tree-Simple-VisitorFactory-0.10
REVISION=	3
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Tree-Simple
TEST_DEPENDS=devel/p5-Test-Exception

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
