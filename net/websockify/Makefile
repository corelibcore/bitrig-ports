# $OpenBSD: Makefile,v 1.2 2015/12/22 14:41:52 sthen Exp $

COMMENT=	WebSocket to TCP proxy

MODPY_EGG_VERSION= 0.7.0
REVISION=	0
DISTNAME=	websockify-${MODPY_EGG_VERSION}

CATEGORIES=	net

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# LGPLv3
PERMIT_PACKAGE_CDROM=	Yes

GH_ACCOUNT=	kanaka
GH_PROJECT=	websockify
GH_TAGNAME=	v${MODPY_EGG_VERSION}

MODULES=	lang/python
MODPY_SETUPTOOLS= Yes
RUN_DEPENDS=	math/py-numpy
TEST_DEPENDS=	devel/py-nose \
		devel/py-mox \
		${BUILD_PKGPATH}

post-build:
	cd ${WRKSRC}; env ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS}

post-install:
	${INSTALL_DATA} ${WRKSRC}/docs/websockify.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/lib/websockify
	${INSTALL_DATA} ${WRKSRC}/rebind.so ${PREFIX}/lib/websockify/

do-test:
	cd ${WRKSRC}/tests; nosetests

.include <bsd.port.mk>
