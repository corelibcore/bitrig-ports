# $OpenBSD: Makefile,v 1.15 2016/03/13 21:35:36 sebastia Exp $

BROKEN= 	needs work on bitrig

COMMENT=	CAD program for designing model railroad layouts

VERSION=	4.2.3
DISTNAME=	xtrkcad-source-${VERSION}a
PKGNAME=	xtrkcad-${VERSION}.0
CATEGORIES=	cad

HOMEPAGE=	http://www.xtrkcad.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xtrkcad-fork/}

MODULES=	devel/cmake devel/gettext

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender c fontconfig
WANTLIB += freetype m pthread z cairo webkitgtk-1.0 soup-2.4
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 javascriptcoregtk-1.0
WANTLIB += atk-1.0 gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0

LIB_DEPENDS=	www/webkit>=1.4.0v0

CONFIGURE_ENV+=	CFLAGS=-I${PREFIX}/include \
		LDFLAGS="-pthread -L${PREFIX}/lib -liconv -lintl"

.include <bsd.port.mk>
