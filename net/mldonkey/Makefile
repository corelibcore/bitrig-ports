# $OpenBSD: Makefile,v 1.16 2016/03/01 09:05:33 dcoppa Exp $

COMMENT =	e-donkey client
DISTNAME =	mldonkey-3.1.5
REVISION =	2
CATEGORIES =	net

HOMEPAGE =	http://mldonkey.sourceforge.net/Main_Page
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=mldonkey/}

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 bz2 c cairo charset fontconfig
WANTLIB += freetype gd gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-x11-2.0 jpeg m magic miniupnpc natpmp
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 png pthread rsvg-2
WANTLIB += tiff vpx z
WANTLIB += c++ c++abi

EXTRACT_SUFX =		.tar.bz2

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-gui=newgui2 \
			--enable-upnp-natpmp
CONFIGURE_ENV +=	CPPFLAGS='-I${LOCALBASE}/include -I${X11BASE}/include' \
			LDFLAGS='-L${LOCALBASE}/lib -L${X11BASE}/lib' \
			ac_cv_prog_RPMBUILD="" \
			ac_cv_prog_WGET=""

MODGNU_CONFIG_GUESS_DIRS =	${WRKSRC}/config
WRKCONF =			${WRKSRC}/config

USE_GMAKE =	Yes
MODULES =	lang/ocaml devel/gettext
BUILD_DEPENDS =	lang/ocaml-camlp4 x11/lablgtk2
LIB_DEPENDS =	archivers/bzip2 \
		devel/libmagic \
		graphics/gd \
		net/miniupnp/libnatpmp \
		net/miniupnp/miniupnpc>=1.9 \
		x11/gnome/librsvg \
		x11/gtk+2

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mocaml_native}
FAKE_FLAGS =	OCAML_NATIVE=yes
.else
FAKE_FLAGS =	OCAML_NATIVE=no
.endif

NO_TEST =	Yes

.include <bsd.port.arch.mk>
pre-patch:
	@cd ${WRKSRC}; perl -i -pe 's/\r$$//' `find . -type f`

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/mldonkey
	cp -R ${WRKDIST}/distrib ${PREFIX}/share/mldonkey/
.if ${PROPERTIES:Mocaml_native}
	@cd ${PREFIX}/bin && strip mlnet mlgui mlnet+gui
.endif

.include <bsd.port.mk>
