# $OpenBSD: Makefile,v 1.8 2016/03/01 10:39:17 jasper Exp $

COMMENT=		presenter console with multi-monitor support

GH_ACCOUNT=		pdfpc
GH_PROJECT=		pdfpc
GH_TAGNAME=		v4.0.2

CATEGORIES=		textproc

HOMEPAGE=		https://pdfpc.github.io/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/cmake \
			devel/gettext

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gee-0.8 gio-2.0 glib-2.0 gobject-2.0 gthread-2.0 gtk-3
WANTLIB += gstbase-1.0 gstreamer-1.0 gstvideo-1.0 m pango-1.0
WANTLIB += pangocairo-1.0 poppler-glib pthread

BUILD_DEPENDS=		lang/vala
LIB_DEPENDS=		devel/libgee \
			multimedia/gstreamer1/plugins-base \
			print/poppler \
			x11/gtk+3

CONFIGURE_ARGS+=	-DMANDIR="${PREFIX}/man/man1" \
			-DSYSCONFDIR="${PREFIX}/share/examples/pdfpc"

NO_TEST=		Yes

.include <bsd.port.mk>
