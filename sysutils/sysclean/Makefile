# $OpenBSD: Makefile,v 1.3 2016/03/12 16:04:18 semarie Exp $

COMMENT =	help removing obsolete files between OpenBSD upgrades

V =		1.1
DISTNAME =	sysclean-${V}

CATEGORIES =	sysutils
HOMEPAGE =	https://github.com/semarie/sysclean/

MASTER_SITES =	https://github.com/semarie/sysclean/archive/
DISTFILES =	sysclean-${V}.tar.gz{${V}.tar.gz}

MAINTAINER =	Sebastien Marie <semarie@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MAKE_ENV =		BINDIR=${LOCALBASE}/bin \
			MANDIR=${LOCALBASE}/man/man

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sysclean
	${INSTALL_DATA} ${WRKSRC}/sysclean.ignore ${PREFIX}/share/examples/sysclean

.include <bsd.port.mk>
