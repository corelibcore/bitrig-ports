# $OpenBSD: Makefile,v 1.10 2016/03/18 23:12:22 naddy Exp $

COMMENT =	system tray icon support for Tk

DISTNAME =	tktray1.3.9
PKGNAME =	tktray-1.3.9
REVISION =	2
SHARED_LIBS =	tktray139 0.0
CATEGORIES =	x11
HOMEPAGE =	https://code.google.com/p/tktray/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	X11

MASTER_SITES =	https://tktray.googlecode.com/files/
MODULES =	x11/tk
BUILD_DEPENDS =	${MODTK_BUILD_DEPENDS}
RUN_DEPENDS =	${MODTK_RUN_DEPENDS}

FAKE_FLAGS =	PKG_DIR=tktray \
		INSTALL_LIBRARY='${INSTALL_DATA}'

SEPARATE_BUILD=	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=--with-tcl=${MODTCL_LIBDIR} \
		--with-tk=${MODTK_LIBDIR} \
		--libdir=${MODTCL_TCLDIR} \
		--datadir=${PREFIX}/share/examples \
		SHLIB_VERSION=${LIBtktray139_VERSION}

TEST_IS_INTERACTIVE = X11
TEST_TARGET = test

.include <bsd.port.mk>
