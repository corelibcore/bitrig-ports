# $OpenBSD: Makefile,v 1.52 2015/11/04 21:43:40 jturner Exp $

BROKEN =		needs work on bitrig

COMMENT =		simple distributed software configuration management

DISTNAME =		fossil-src-1.34
PKGNAME =		fossil-1.34
EPOCH =			0
CATEGORIES =		devel www

HOMEPAGE =		http://fossil-scm.org/
MASTER_SITES =		http://fossil-scm.org/download/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

FLAVORS=		static
FLAVOR?=

WANTLIB =		c crypto fuse m ssl sqlite3>=30.1 z

MODULES =		lang/tcl

BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS}

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--disable-internal-sqlite
CONFLICT_MARKER =	fossil-*-!static

.if ${FLAVOR} == "static"
CONFIGURE_ARGS +=	--static --with-openssl=none
PREFIX =		${VARBASE}/www
CONFLICT_MARKER =	fossil-*-static
.endif

SUBST_VARS +=		CONFLICT_MARKER STATIC

TEST_DEPENDS =		${MODTCL_RUN_DEPENDS}

post-extract:
	rm ${WRKSRC}/src/sqlite3.h

pre-configure:
	${SUBST_CMD} ${WRKSRC}/auto.def

do-test:
	@cd ${WRKSRC} && ${MODTCL_BIN} test/tester.tcl fossil

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/fossil ${PREFIX}/bin

.include <bsd.port.mk>
