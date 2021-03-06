# $OpenBSD: Makefile,v 1.24 2016/03/11 19:59:17 naddy Exp $

# XXX check if still needed at next update
#CXXFLAGS +=		-std=c++11
MAKE_FLAGS +=		CXXFLAGS="${CXXFLAGS} -std=c++11"

COMMENT=		3D filesystem visualizer

V=			1.1.0
DISTNAME=		fsv2-$V
PKGNAME=		fsv-$V
CATEGORIES=		x11
REVISION=		0

SHARED_LIBS +=	fsvui                     0.0 # 0.0

HOMEPAGE=		http://fedorchenko.net/fsv2.php

# LGPLv2
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += GL GLU ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xmu Xrandr Xrender Xt
WANTLIB += Xxf86vm atk-1.0 atkmm-1.6 c cairo cairomm-1.0 drm expat
WANTLIB += ffi fontconfig freetype ftgl gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gdkmm-2.4 gio-2.0 giomm-2.4 glapi glib-2.0 glibmm-2.4
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0
WANTLIB += gtkgl-2.0 gtkmm-2.4 harfbuzz m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangomm-1.4 pcre pixman-1 png pthread
WANTLIB += pthread-stubs sigc-2.0 xcb xcb-dri2 xcb-glx
WANTLIB += xcb-render xcb-shm z
WANTLIB += c++ c++abi

MASTER_SITES=		http://fedorchenko.net/src/
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

# c++11
MODULES +=		gcc4
MODGCC4_ARCHS=		*
MODGCC4_LANGS=		c++

LIB_DEPENDS=		graphics/ftgl \
			x11/gtkglarea \
			x11/gtk2mm

RUN_DEPENDS=		devel/desktop-file-utils

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
