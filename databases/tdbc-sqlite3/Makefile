# $OpenBSD: Makefile,v 1.5 2016/03/11 20:28:23 naddy Exp $

COMMENT =	sqlite3 module for TDBC

V =		1.0.3
DISTNAME =	tdbcsqlite3-${V}
PKGNAME =	tdbc-sqlite3-${V}
CATEGORIES =	databases
HOMEPAGE =	http://tdbc.tcl.tk/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tcl/}
MODULES =		lang/tcl

# TDBC needs TclOO, which is in Tcl 8.6
MODTCL_VERSION =	8.6

BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS} \
			databases/tdbc

RUN_DEPENDS =		${MODTCL_RUN_DEPENDS} \
			databases/tdbc \
			databases/sqlite3,-tcl

TEST_DEPENDS =		databases/sqlite3,-tcl
FAKE_FLAGS =		tmdir=${MODTCL_MODDIR}/${MODTCL_VERSION:S/.//}
SEPARATE_BUILD =	Yes
USE_GROFF =		Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS +=	--with-tcl=${MODTCL_LIBDIR} \
			--with-tdbc=${MODTCL_TCLDIR}/tdbc

TEST_TARGET =		test
NO_BUILD =		Yes

SUBST_VARS +=		V

.include <bsd.port.mk>
