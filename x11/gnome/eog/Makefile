# $OpenBSD: Makefile,v 1.127 2016/02/15 09:03:12 jasper Exp $

COMMENT=		Eye of GNOME, image viewing and cataloging program

GNOME_PROJECT=		eog
GNOME_VERSION=		3.18.2

CATEGORIES=		graphics

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject croco-0.6 dbus-1 exempi exif
WANTLIB += expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0 gnome-desktop-3
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz
WANTLIB += jpeg lcms2 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre peas-1.0 peas-gtk-1.0 pixman-1 png pthread pthread-stubs
WANTLIB += rsvg-2 xcb xcb-render xcb-shm xml2 z lzma epoxy

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

BUILD_DEPENDS=		devel/gsettings-desktop-schemas

LIB_DEPENDS=		devel/libpeas \
			graphics/lcms2 \
			graphics/libexif \
			textproc/exempi \
			x11/gnome/desktop

RUN_DEPENDS=		devel/gsettings-desktop-schemas

MODGNOME_TOOLS += desktop-file-utils gobject-introspection yelp
MODGNOME_TOOLS += gtk-update-icon-cache shared-mime-info

post-install:
	rm ${PREFIX}/lib/eog/{,plugins}/*.{a,la}

.include <bsd.port.mk>
