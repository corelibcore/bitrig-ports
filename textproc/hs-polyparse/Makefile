# $OpenBSD: Makefile,v 1.15 2016/01/20 16:26:20 kili Exp $

COMMENT =		alternative parser combinator libraries

DISTNAME =		polyparse-1.11
REVISION =		2
CATEGORIES =		textproc
HOMEPAGE =		http://code.haskell.org/~malcolm/polyparse/

# LGPL
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	5XYDSuF9x9Q8ty1hmIwch4

RUN_DEPENDS +=		devel/hs-text
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
