# $OpenBSD: Makefile,v 1.12 2015/09/29 10:53:17 sthen Exp $

COMMENT =		helper to test wsgi applications

MODPY_EGG_VERSION =	2.0.18
DISTNAME =		WebTest-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
EXTRACT_SUFX=		.zip
REVISION =		0

CATEGORIES =		www devel

HOMEPAGE =		http://webtest.pythonpaste.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-six \
			www/py-beautifulsoup4 \
			www/py-webob

# also needs https://waitress.readthedocs.org/en/latest/
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-dtopt \
			devel/py-mock \
			devel/py-nose

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests lib tests

.include <bsd.port.mk>
