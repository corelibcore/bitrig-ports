# $OpenBSD: Makefile,v 1.47 2016/03/11 19:59:17 naddy Exp $

PORTROACH+=	limit:^2

COMMENT=	gtk+2 spelling checker
DISTNAME=	gtkspell-2.0.16

SHARED_LIBS=	gtkspell 1.0 # .0.0

REVISION=	10

CATEGORIES=	textproc x11

HOMEPAGE=	http://gtkspell.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo drm enchant
WANTLIB += expat ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread-stubs pthread
WANTLIB += xcb xcb-render xcb-shm z
WANTLIB += c++ c++abi

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gtkspell/}

USE_GMAKE=	Yes

MODULES=	devel/gettext \
		textproc/intltool

LIB_DEPENDS=	textproc/enchant \
		x11/gtk+2

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
