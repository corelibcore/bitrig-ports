# $OpenBSD: Makefile,v 1.12 2016/03/20 19:56:27 naddy Exp $

COMMENT =	mro::* interface compatibility for Perl < 5.9.5

DISTNAME =	MRO-Compat-0.12
REVISION =	0
CATEGORIES =	devel

CPAN_AUTHOR =	BOBTFISH

# perl_5
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
PKG_ARCH =	*

CONFIGURE_STYLE =	modinst

RUN_DEPENDS =	devel/p5-Class-C3>=0.20

# Optional depends to avoid skipping tests
TEST_DEPENDS =	devel/p5-Test-Pod \
		devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
