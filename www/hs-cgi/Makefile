# $OpenBSD: Makefile,v 1.26 2016/01/29 20:28:09 kili Exp $

COMMENT =		CGI library for Haskell

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		cgi-3001.2.2.2
REVISION =		1
CATEGORIES =		www devel

MAINTAINER =		Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	CEOwOunYNPs8KwnXyLMnk8

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-exceptions<0.9 \
			devel/hs-mtl>=2.2.1,<2.3 \
			devel/hs-network-uri>=2.6,<2.7 \
			devel/hs-network>=2.6,<2.7 \
			devel/hs-old-locale<1.1 \
			devel/hs-old-time<1.2 \
			devel/hs-parsec>=2.0,<3.2 \
			net/hs-multipart>=0.1.2,<0.2

.include <bsd.port.mk>
