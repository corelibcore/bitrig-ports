# $OpenBSD: Makefile,v 1.44 2016/03/21 07:24:01 ajacoutot Exp $

COMMENT=	free open source planetarium

DISTNAME=	stellarium-0.14.3

CATEGORIES=	astro x11

REVISION=	1

HOMEPAGE=	http://www.stellarium.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL Qt5Concurrent Qt5Core Qt5Gui Qt5Network Qt5OpenGL
WANTLIB += Qt5Script Qt5SerialPort Qt5Widgets c m pthread z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=stellarium/}

MODULES=	devel/cmake \
		x11/qt5

# used to download more stars definitions
RUN_DEPENDS=	net/curl \
		devel/desktop-file-utils \
		x11/gtk+3,-guic

CONFIGURE_ENV=	HOME=${WRKDIR}
CONFIGURE_ARGS=	-Wno-dev \
		-DCMAKE_C_FLAGS="${CFLAGS} -I${X11BASE}/include" \
		-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${X11BASE}/include"

PORTHOME=	${WRKDIR}

NO_TEST=	Yes

pre-configure:
	sed -i 's,/usr/local,${LOCALBASE},g' ${WRKSRC}/CMakeLists.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/data/stellarium.desktop \
		${PREFIX}/share/applications

.include <bsd.port.mk>
