# $OpenBSD: Makefile,v 1.1.1.1 2015/08/16 19:43:56 edd Exp $

COMMENT =		backport of functools from Python-3.2

V =			3.2.3
MODPY_EGG_VERSION =	${V}-2
DISTNAME =		functools32-${MODPY_EGG_VERSION}

# can't have an extra hyphen in package name
PKGNAME =		py-functools32-${V}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/MiCHiLU/python-functools32

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} test_functools32.py

.include <bsd.port.mk>
