# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:51 naddy Exp $

COMMENT =	create SOCKS v4/v5 client or server


DISTNAME =	IO-Socket-Socks-0.65

CATEGORIES =	net
CPAN_AUTHOR =	OLEG

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
PKG_ARCH =	*

MODCPAN_EXAMPLES =	Yes

TEST_ENV += SOCKS_SLOW_TESTS=1

.include <bsd.port.mk>
