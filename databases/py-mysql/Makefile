# $OpenBSD: Makefile,v 1.50 2016/03/20 16:12:23 naddy Exp $

COMMENT =	Python interface to MySQL

MODPY_EGG_VERSION = 1.2.5
DISTNAME =	MySQL-python-${MODPY_EGG_VERSION}
PKGNAME =	py-mysql-${MODPY_EGG_VERSION}
REVISION =	2

CATEGORIES =	databases

HOMEPAGE =	https://github.com/farcepest/MySQLdb1

# GPL
PERMIT_PACKAGE_CDROM =	Yes

EXTRACT_SUFX =	.zip

WANTLIB +=	crypto m pthread ssl z ${MODPY_WANTLIB}
WANTLIB +=	mysqlclient_r

MODPY_PI =	Yes

MODULES =	lang/python
BUILD_DEPENDS =	textproc/py-sphinx
LIB_DEPENDS =	databases/mariadb

NO_TEST =	Yes

MODPY_SETUPTOOLS = Yes

post-extract:
	chmod -R go-w ${WRKSRC}

DOCSRC =	${WRKSRC}/doc

post-build:
	cd ${DOCSRC} && ${LOCALBASE}/bin/sphinx-build -N . _build/html

DOCS =		${PREFIX}/share/doc/py-mysql

post-install:
	${INSTALL_DATA_DIR} ${DOCS}
	cd ${DOCSRC}/_build/html && pax -rw * ${DOCS}

.include <bsd.port.mk>
