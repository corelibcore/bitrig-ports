# $OpenBSD: Makefile,v 1.22 2016/01/20 16:15:45 kili Exp $

COMMENT=		mysql driver for HDBC

DISTNAME=		HDBC-mysql-0.6.6.1
REVISION=		8
CATEGORIES=		databases

HOMEPAGE=		https://github.com/bos/hdbc-mysql

# LGPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES=		lang/ghc

MODGHC_BUILD=		cabal hackage haddock register

MODGHC_PACKAGE_KEY =	KVhFDkFrDR19G5s6sxeyY9

RUN_DEPENDS +=		databases/hs-HDBC>=2.1.0 \
			databases/mariadb \
			devel/hs-mtl \
			devel/hs-utf8-string
BUILD_DEPENDS +=	${RUN_DEPENDS}

.include <bsd.port.mk>
