# $OpenBSD: Makefile,v 1.5 2015/05/22 11:31:20 ajacoutot Exp $

COMMENT =	GTK+3 library for registering keyboard shortcuts
DISTNAME =	keybinder3-0.3.0
CATEGORIES =	x11 devel
REVISION =	2

SHARED_LIBS =	keybinder-3.0		0.0	# 0.0

HOMEPAGE =	https://github.com/engla/keybinder

# GPLv2+ 
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi cairo
WANTLIB += cairo-gobject dbus-1 epoxy expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs xcb xcb-render xcb-shm z

MASTER_SITES =	http://mirrors.nycbug.org/pub/distfiles/

MODULES =	devel/gettext \
		x11/gnome

MODGNOME_TOOLS =	gobject-introspection

LIB_DEPENDS =	x11/gtk+3

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-static

USE_GMAKE =		Yes
LIBTOOL_FLAGS =		--tag=disable-static

post-install:
	rm ${PREFIX}/lib/libkeybinder-3.0.la

.include <bsd.port.mk>
