# $OpenBSD: Makefile,v 1.2 2016/01/07 21:35:28 jasper Exp $

COMMENT=	Python bindings for Augeas

MODPY_EGG_VERSION= 0.5.0
DISTNAME=	python-augeas-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/python-/py-/}
REVISION=	0

CATEGORIES=	sysutils

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes

FLAVORS=	python3
FLAVOR?=

MODULES=	lang/python
MODPY_PI=	Yes

# dlopen()s libaugeas
RUN_DEPENDS=	sysutils/augeas
TEST_DEPENDS=	${BUILD_PKGPATH} \
		${RUN_DEPENDS}

do-test:
	cd ${WRKSRC}/test; ${MODPY_BIN} test_augeas.py

.include <bsd.port.mk>
