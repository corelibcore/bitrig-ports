# $OpenBSD: Makefile,v 1.16 2016/01/08 09:42:24 shadchin Exp $

COMMENT=	elegant and simple HTTP library for Python

MODPY_EGG_VERSION=2.9.1
DISTNAME=	requests-${MODPY_EGG_VERSION}
PKGNAME=	py-requests-${MODPY_EGG_VERSION}

CATEGORIES=	www

HOMEPAGE=	http://python-requests.org/

# APLv2
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =	Yes

MODULES=	lang/python

TEST_DEPENDS=	devel/py-test${MODPY_FLAVOR} \
		devel/py-test-httpbin${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR?=

MODPY_SETUPTOOLS= Yes

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest

.include <bsd.port.mk>
