# $OpenBSD: Makefile,v 1.31 2016/01/17 17:29:10 sthen Exp $

COMMENT=		python bindings for the WebKit GTK+ port

V=			1.1.8
DISTNAME=		pywebkitgtk-$V
PKGNAME=		py-webkitgtk-$V
REVISION=		18
CATEGORIES=		www

HOMEPAGE=		https://pywebkitgtk.googlecode.com/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}/files/
EXTRACT_SUFX=		.tar.bz2

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xt atk-1.0 cairo
WANTLIB += enchant expat ffi fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gstbase-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gstvideo-1.0 gthread-2.0 gtk-x11-2.0
WANTLIB += icui18n jpeg m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread-stubs soup-2.4
WANTLIB += sqlite3 xcb xml2 z gstapp-1.0 xcb-render
WANTLIB += GL xcb-shm xslt webkitgtk-1.0
WANTLIB += javascriptcoregtk-1.0 orc-0.4
WANTLIB += gcrypt gpg-error graphite2
WANTLIB += gstaudio-1.0 gstfft-1.0 gsttag-1.0 harfbuzz
WANTLIB += pthread secret-1 webp
WANTLIB += EGL gbm harfbuzz-icu icudata icuuc lzma
WANTLIB += X11-xcb Xxf86vm drm glapi xcb-dri2 xcb-glx xcb-shape
WANTLIB += xcb-xfixes

MODULES=		lang/python \
			devel/gettext

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		x11/py-gtk2
LIB_DEPENDS=		textproc/libxslt \
			www/webkit

CONFIGURE_STYLE=	gnu

USE_GMAKE=		Yes

.include <bsd.port.mk>
