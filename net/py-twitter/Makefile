# $OpenBSD: Makefile,v 1.13 2015/09/29 10:52:29 sthen Exp $

COMMENT=		twitter python module

MODPY_EGG_VERSION=	1.17.1
DISTNAME=		twitter-${MODPY_EGG_VERSION}
PKGNAME=		py-twitter-${MODPY_EGG_VERSION}
REVISION=		0

CATEGORIES=		net www

HOMEPAGE=		http://mike.verdone.ca/twitter/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =		Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		net/py-irclib
BUILD_DEPENDS=		${RUN_DEPENDS}
TEST_DEPENDS=		devel/py-nose

.include <bsd.port.mk>
