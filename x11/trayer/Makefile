# $OpenBSD: Makefile,v 1.14 2013/03/11 11:46:16 espie Exp $

COMMENT=		lightweight GTK2-based systray

DISTNAME=		trayer-1.0
REVISION=		8
CATEGORIES=		x11

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xmu Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gdk_pixbuf_xlib-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread pthread-stubs xcb xcb-render xcb-shm z

MASTER_SITES=		http://download.gna.org/fvwm-crystal/trayer/1.0/

USE_GMAKE=		Yes

MODULES=		devel/gettext

LIB_DEPENDS=		x11/gtk+2

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS} -DG_DISABLE_DEPRECATED"

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/trayer ${PREFIX}/bin

.include <bsd.port.mk>
