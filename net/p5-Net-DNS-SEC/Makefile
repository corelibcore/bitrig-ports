# $OpenBSD: Makefile,v 1.25 2016/03/20 19:56:52 naddy Exp $

COMMENT =		extends the Net::DNS module with DNSSEC functionality

DISTNAME =		Net-DNS-SEC-1.02

CATEGORIES =		net security

HOMEPAGE =		http://www.net-dns.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://www.net-dns.org/download/

MODULES =		cpan
PKG_ARCH =		*
RUN_DEPENDS =		net/p5-Net-DNS>=1.01 \
			security/p5-Crypt-OpenSSL-RSA>=0.27 \
			security/p5-Crypt-OpenSSL-DSA>=0.14 \
			security/p5-Crypt-OpenSSL-Bignum>=0.04
TEST_DEPENDS =		devel/p5-Test-Pod>=1.45 \
			security/p5-Crypt-OpenSSL-Random>=0.06 \

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	demo

.include <bsd.port.mk>
