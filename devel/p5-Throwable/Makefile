# $OpenBSD: Makefile,v 1.11 2016/03/20 19:56:39 naddy Exp $

COMMENT =	a role for classes that can be thrown

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Throwable-0.200013
CATEGORIES =	devel
CPAN_AUTHOR =	RJBS

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Devel-StackTrace>=1.32 \
		devel/p5-Module-Runtime>=0.002 \
		devel/p5-Moo>=0

TEST_DEPENDS =	devel/p5-Devel-StackTrace>=1.32

.include <bsd.port.mk>
