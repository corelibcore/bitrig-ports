# $OpenBSD: Makefile,v 1.23 2015/09/29 10:52:54 sthen Exp $

COMMENT=	pythonic, object-oriented web development framework

MODPY_EGG_VERSION=	3.2.4
DISTNAME=		CherryPy-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		www
REVISION=		0

HOMEPAGE=	http://www.cherrypy.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_PYPI:=C/CherryPy/}

MODULES=	lang/python

TEST_DEPENDS =	devel/py-nose \
		www/py-routes

MODPY_SETUPTOOLS =	Yes

# test_antistampede requires higher file descriptor limit
# test_cache_control requires higher SECONDS variable
# test_states requires signal handling fixed
TEST_IS_INTERACTIVE =Yes

do-test:
	@cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests -s -v \
		lib/cherrypy/test

.include <bsd.port.mk>
