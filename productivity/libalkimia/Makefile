# $OpenBSD: Makefile,v 1.3 2015/05/28 10:17:25 pascal Exp $
COMMENT =		common classes for finance KDE 4 apps
CATEGORIES =		productivity x11
HOMEPAGE =		http://kmymoney2.sourceforge.net
DISTNAME =		libalkimia-4.3.2
REVISION =		0

SHARED_LIBS =		alkimia		0.0 # 4.3

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		lib/qt4/QtDBus gmp m

MASTER_SITES =		http://kde-apps.org/CONTENT/content-files/137323-
EXTRACT_SUFX =		.tar.bz2

MODULES =		x11/kde4
MODKDE4_USE =
KDE4_ONLY =		Yes

BUILD_DEPENDS =		devel/doxygen \
			${MODKDE4_DEP_DIR}/libs
LIB_DEPENDS =		devel/gmp

do-test:
	cd ${WRKBUILD} && ./libalkimia/alkcompanytest

.include <bsd.port.mk>
