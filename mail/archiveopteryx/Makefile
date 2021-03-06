# $OpenBSD: Makefile,v 1.16 2014/01/25 13:17:35 sthen Exp $

COMMENT =		mail server storing messages in a database

DISTNAME =		archiveopteryx-3.1.3
REVISION =		12
CATEGORIES =		mail databases

HOMEPAGE =		http://www.archiveopteryx.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c crypto m pthread ssl z
WANTLIB +=		c++ c++abi


MASTER_SITES =		${HOMEPAGE}/download/
EXTRACT_SUFX =		.tar.bz2

BUILD_DEPENDS =		devel/jam
NO_TEST =		yes

MODULES=       gcc4
MODGCC4_ARCHS = *
MODGCC4_LANGS = c c++

JAMDEBUG =	-d x	# display command-lines
JAMDEBUG +=	-q	# die quickly on build failure
MAKE_ENV +=	CC=${CC} CXX=${CXX}

JAMFLAGS = \
	-sAOXUSER=_aox \
	-sAOXGROUP=_aox \
	-sBUILD= \
	-sOPTIM="${CFLAGS} -Wno-error" \
	-sCXXFLAGS="${CXXFLAGS}" \
	-sLDFLAGS="${LDFLAGS}"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Jam{rules,settings}

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} jam ${JAMDEBUG} ${JAMFLAGS}

do-install:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} jam ${JAMDEBUG} ${JAMFLAGS} install
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/archiveopteryx
	${INSTALL_DATA} ${FILESDIR}/*.conf ${PREFIX}/share/examples/archiveopteryx

.include <bsd.port.mk>
