# $OpenBSD: Makefile,v 1.7 2015/09/29 10:52:53 sthen Exp $

COMMENT =		Python module to validate VAT numbers

MODPY_EGG_VERSION =	1.1
DISTNAME =		vatnumber-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		textproc

HOMEPAGE =		https://vatnumber.googlecode.com/

# GPLv3
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =		${HOMEPAGE}files/

MODULES =		lang/python

RUN_DEPENDS =		devel/py-suds

TEST_DEPENDS =	devel/py-suds

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
