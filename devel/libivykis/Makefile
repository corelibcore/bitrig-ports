# $OpenBSD: Makefile,v 1.7 2015/07/25 08:18:20 steven Exp $

COMMENT =		asynchronous I/O readiness notification library

V =			0.39
DISTNAME =		ivykis-$V
PKGNAME =		lib${DISTNAME}
REVISION =		1

SHARED_LIBS =		ivykis	1.0

CATEGORIES =		devel

HOMEPAGE =		http://libivykis.sourceforge.net/

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libivykis/$V/}

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
