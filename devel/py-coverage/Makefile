# $OpenBSD: Makefile,v 1.16 2015/09/29 10:51:53 sthen Exp $

COMMENT =	code coverage measurement for Python

MODPY_EGG_VERSION = 3.7.1
DISTNAME =	coverage-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	devel

HOMEPAGE =	http://nedbatchelder.com/code/coverage

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	${MODPY_WANTLIB} pthread

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_SETUPTOOLS = Yes

NO_TEST =	Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
