# $OpenBSD: Makefile,v 1.36 2016/03/18 23:12:20 naddy Exp $

# XXX check if still needed at next update
CXXFLAGS +=		-std=c++11

COMMENT=		C++ interface to the graphics library for GNOME

GNOME_PROJECT=		libgnomecanvasmm
GNOME_VERSION=		2.26.0
EXTRACT_SUFX=		.tar.bz2
REVISION=		13

SHARED_LIBS +=  gnomecanvasmm-2.6         1.0 # 1.6

CATEGORIES=		x11

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender art_lgpl_2 atk-1.0 atkmm-1.6 cairo cairomm-1.0
WANTLIB += expat ffi fontconfig freetype gailutil gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gdkmm-2.4 gio-2.0 giomm-2.4 glib-2.0
WANTLIB += glibmm-2.4 gmodule-2.0 gnomecanvas-2 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-x11-2.0 gtkmm-2.4 harfbuzz m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pangomm-1.4 pcre pixman-1
WANTLIB += png pthread pthread-stubs sigc-2.0 xcb xcb-render
WANTLIB += xcb-shm z

MODULES=		devel/gettext \
			x11/gnome

MODGNU_CONFIG_GUESS_DIRS +=	${WRKSRC}/scripts

LIB_DEPENDS=		x11/gnome/libgnomecanvas \
			x11/gtk2mm

.include <bsd.port.mk>
