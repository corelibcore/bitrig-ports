# $OpenBSD: Makefile,v 1.3 2016/01/06 20:02:19 jasper Exp $

COMMENT =	fan made Zelda game for Solarus engine

GH_ACCOUNT=	christopho
GH_PROJECT=	zelda_roth_se
GH_TAGNAME=	v1.0.6
REVISION =	0

HOMEPAGE =	http://www.solarus-games.org/games/zelda-return-of-the-hylian-se/

# GPLv3+ and CC BY-SA 3.0
PERMIT_PACKAGE_CDROM =	contains copyrighted artwork
PERMIT_PACKAGE_FTP =	Yes

MODULES =	devel/cmake

BUILD_DEPENDS =	archivers/zip

RUN_DEPENDS =	games/solarus/solarus>=1.4.4

.include <bsd.port.mk>
