# $OpenBSD: Makefile,v 1.29 2016/01/29 20:28:09 kili Exp $

COMMENT =		library for client-side HTTP

# Dependency of meta/haskell-platform.
# Please do *not* update without thinking.
PORTROACH =		ignore:1

DISTNAME =		HTTP-4000.2.20
REVISION =		1
CATEGORIES =		net devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	ALmDkzntV1f2dHTcPW5ASO

MODGHC_SETUP_CONF_ARGS =-fnetwork23

RUN_DEPENDS =		devel/hs-mtl>=2.0,<2.3 \
			devel/hs-network-uri>=2.6,<2.7 \
			devel/hs-network>=2.6,<2.7 \
			devel/hs-old-time>=1.0.0.0,<1.2 \
			devel/hs-parsec>=2.0,<3.2
BUILD_DEPENDS =		${RUN_DEPENDS}

# Missing dependencies
NO_TEST =		Yes

.include <bsd.port.mk>
