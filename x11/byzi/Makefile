# $OpenBSD: Makefile,v 1.4 2016/03/18 23:12:20 naddy Exp $

COMMENT =	confine pointer and keyboard events to a Tk window sub-tree

DISTNAME =	byzi-0.1
REVISION =	0
SHARED_LIBS =	byzi01 0.0
CATEGORIES =	x11
HOMEPAGE =	http://www3.bell.net/stwo/index.html

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	X11
MASTER_SITES =	http://www3.bell.net/stwo/software/
MODULES =	x11/tk
BUILD_DEPENDS =	${MODTK_BUILD_DEPENDS}
RUN_DEPENDS =	${MODTK_RUN_DEPENDS}
FAKE_FLAGS =	PKG_DIR=byzi
SEPARATE_BUILD =Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=--with-tcl=${MODTCL_LIBDIR} \
		--with-tk=${MODTK_LIBDIR} \
		--libdir=${MODTCL_TCLDIR} \
		SHLIB_VERSION=${LIBbyzi01_VERSION}

TEST_IS_INTERACTIVE = X11
TEST_TARGET = test

.include <bsd.port.mk>
