# $OpenBSD: Makefile,v 1.28 2015/11/03 21:53:20 sthen Exp $

COMMENT=	Python interface to the OpenSSL library

MODPY_EGG_VERSION=	0.15.1
REVISION=	1
DISTNAME=	pyOpenSSL-${MODPY_EGG_VERSION}
PKGNAME=	py-openssl-${MODPY_EGG_VERSION}
CATEGORIES=	security devel

HOMEPAGE=	https://github.com/pyca/pyopenssl

# Apache 2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += crypto pthread ssl

FLAVORS=	python3

RUN_DEPENDS =	security/py-cryptography${MODPY_FLAVOR}
BUILD_DEPENDS =	${RUN_DEPENDS}

MODPY_PI =	Yes
MODPY_SETUPTOOLS = Yes

MODULES=	lang/python

TEST_DEPENDS=${FULLPKGNAME}:${BUILD_PKGPATH}

EXAMPLESDIR=	${PREFIX}/share/examples/${MODPY_PY_PREFIX}openssl

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}/simple
	${INSTALL_DATA} ${WRKSRC}/examples/README ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/*.py ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/simple/* ${EXAMPLESDIR}/simple

TESTDIR=${WRKSRC}/regress

do-test:
	mkdir -p ${TESTDIR}
	cd ${TESTDIR} && ${MODPY_BIN} ${WRKSRC}/OpenSSL/test/test_crypto.py
	cd ${TESTDIR} && ${MODPY_BIN} ${WRKSRC}/OpenSSL/test/test_rand.py
	cd ${TESTDIR} && ${MODPY_BIN} ${WRKSRC}/OpenSSL/test/test_ssl.py

.include <bsd.port.mk>
