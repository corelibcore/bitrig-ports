# $OpenBSD: Makefile,v 1.24 2016/03/18 21:38:25 naddy Exp $

COMMENT=		audio/video communications framework

DISTNAME=		farstream-0.2.8

CATEGORIES=		net devel

SHARED_LIBS +=  farstream-0.2        1.2      # 5.0

API_VERSION=		0.2
SUBST_VARS+=		API_VERSION

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/Farstream

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gssdp-1.0
WANTLIB += gstbase-1.0 gstnet-1.0 gstreamer-1.0 gstrtp-1.0 gthread-2.0
WANTLIB += gupnp-1.0 gupnp-igd-1.0 lzma m nice pcre pthread soup-2.4
WANTLIB += sqlite3 xml2 z

MASTER_SITES=		http://www.freedesktop.org/software/farstream/releases/farstream/

MODULES=		devel/gettext


BUILD_DEPENDS=		devel/gobject-introspection
LIB_DEPENDS=		multimedia/gstreamer1/plugins-base \
			net/libnice>=0.1.8
TEST_DEPENDS=		multimedia/gstreamer1/plugins-bad

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-gupnp \
			--enable-introspection

post-install:
	rm ${PREFIX}/lib/farstream-${API_VERSION}/*.la
	rm ${PREFIX}/lib/gstreamer-1.0/*.la

.include <bsd.port.mk>
