# $OpenBSD: Makefile,v 1.7 2016/01/20 16:22:29 kili Exp $

COMMENT =		various functions on tuples

DISTNAME =		tuple-0.2.0.1
REVISION =		4
CATEGORIES =		devel

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	B4RYqDDJuFF8bAUvst5wdK

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/hs-OneTuple

.include <bsd.port.mk>
