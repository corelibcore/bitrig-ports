# $OpenBSD: Makefile,v 1.5 2015/07/07 09:15:32 ajacoutot Exp $

COMMENT =		interpreter for some LucasArts 3D games

V =			0.2.1
DISTNAME =		residualvm-${V}-sources
PKGNAME =		residualvm-${V}
REVISION =		1

CATEGORIES =		games

HOMEPAGE =		http://residualvm.org/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL SDL c freetype jpeg m mad mpeg2 ogg png pthread
WANTLIB += theoradec vorbis vorbisfile z
WANTLIB += c++ c++abi

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=residualvm/}

MODULES =		converters/libiconv

LIB_DEPENDS =		audio/libmad \
			audio/libvorbis \
			devel/sdl \
			graphics/jpeg \
			graphics/libmpeg2 \
			graphics/png \
			multimedia/libtheora
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--enable-verbose-build \
			--mandir=${PREFIX}/man
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/residualvm-${V}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/dists/residualvm.desktop ${PREFIX}/share/applications/

.include <bsd.port.mk>
