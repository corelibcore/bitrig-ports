# $OpenBSD: Makefile,v 1.21 2016/03/18 23:12:15 naddy Exp $

COMMENT =		low-latency voice chat client

GH_ACCOUNT =		mumble-voip
GH_PROJECT =		mumble
GH_TAGNAME =		1.2.14

CATEGORIES =		audio

HOMEPAGE =		http://www.mumble.info/

# BSD3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		ICE SM X11 Xext Xi Xinerama Xrender c crypto
WANTLIB +=		fontconfig freetype lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB +=		lib/qt4/QtNetwork lib/qt4/QtSql lib/qt4/QtSvg
WANTLIB +=		lib/qt4/QtXml m opus portaudio protobuf
WANTLIB +=		pthread sndfile speex speexdsp ssl
WANTLIB +=		c++ c++abi

MODULES =		x11/qt4
CONFIGURE_STYLE =	qmake
SEPARATE_BUILD =	No

BUILD_DEPENDS =		audio/celt07 \
			devel/boost

LIB_DEPENDS =		audio/libsndfile>=1.0.25p0 \
			audio/opus \
			audio/portaudio-svn \
			audio/speex \
			devel/protobuf

RUN_DEPENDS =		audio/celt07 \
			audio/celt=0.11.1v1 \
			devel/desktop-file-utils \
			x11/gtk+3,-guic

MODQMAKE_ARGS =		MUMBLE_PREFIX=${PREFIX} \
			QMAKE_LRELEASE=${LOCALBASE}/bin/lrelease4 \
			CONFIG+=no-11x \
			CONFIG+=no-alsa \
			CONFIG+=no-bonjour \
			CONFIG+=no-bundled-celt \
			CONFIG+=no-bundled-opus \
			CONFIG+=no-bundled-speex \
			CONFIG+=no-crash-report \
			CONFIG+=no-embed-qt-translations \
			CONFIG+=no-g15 \
			CONFIG+=no-oss \
			CONFIG+=no-overlay \
			CONFIG+=no-pulseaudio \
			CONFIG+=no-server \
			CONFIG+=no-speechd \
			CONFIG+=no-update \
			CONFIG+=packaged \
			CONFIG+=release \
			DEFINES+="LOCALE_PATH=${PREFIX}/share/mumble/locale" \
			DEFINES+="PLUGIN_PATH=${PREFIX}/lib/mumble"

ALL_TARGET =		release

NO_TEST =		Yes

pre-build:
	cd ${WRKSRC}/src/mumble/ && QTDIR=${WRKDIR}/bin \
		${LOCALBASE}/bin/lrelease4 *.ts

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/release/mumble \
		${PREFIX}/bin/mumble
	${INSTALL_DATA_DIR} ${PREFIX}/lib/mumble
	${INSTALL_DATA} ${WRKBUILD}/release/plugins/lib*.so \
		${PREFIX}/lib/mumble/
	${INSTALL_DATA_DIR} ${PREFIX}/share/mumble/locale
	${INSTALL_DATA} ${WRKBUILD}/src/mumble/*.qm \
		${PREFIX}/share/mumble/locale/
	${INSTALL_MAN} ${WRKBUILD}/man/mumble.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} \
		${PREFIX}/share/icons/hicolor/scalable/apps
	${INSTALL_DATA} ${WRKBUILD}/icons/mumble.svg \
		${PREFIX}/share/icons/hicolor/scalable/apps/
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKBUILD}/scripts/mumble.desktop \
		${PREFIX}/share/applications/

.include <bsd.port.mk>
