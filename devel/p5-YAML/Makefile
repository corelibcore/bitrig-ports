# $OpenBSD: Makefile,v 1.19 2016/03/20 19:56:41 naddy Exp $

COMMENT =	YAML Ain't Markup Language

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	YAML-1.15
CATEGORIES =	devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-YAML-XS

TEST_DEPENDS =	devel/p5-Test-YAML>=1.05 \
		devel/p5-Test-Pod
MAKE_ENV +=	RELEASE_TESTING=1

.include <bsd.port.mk>

