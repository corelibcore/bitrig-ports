# $OpenBSD: Makefile,v 1.26 2016/01/20 16:20:43 kili Exp $

COMMENT =		parser and writer for config files

DISTNAME =		ConfigFile-1.1.4
REVISION =		3
CATEGORIES =		devel sysutils
HOMEPAGE =		https://github.com/jgoerzen/configfile/wiki

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ghc

MODGHC_BUILD =		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	LRTL7Iv19nv0qtoyt2HfMc

RUN_DEPENDS +=		devel/hs-MissingH>=1.0.0 \
			devel/hs-mtl
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
