# $OpenBSD: Makefile,v 1.2 2015/10/30 12:47:39 sthen Exp $

COMMENT =	store rasters coverages within spatialite
PROJECT =	librasterlite2
DISTNAME =	${PROJECT}-1.0.0-rc0
PKGNAME =	${PROJECT}-1.0.0rc0
REVISION =	0
SHARED_LIBS +=	rasterlite2 0.0 # 1.0

MODULES +=	devel/gettext
LIB_DEPENDS +=	geo/spatialite/libspatialite>=4.1.0 \
		archivers/xz \
		net/curl \
		graphics/cairo \
		graphics/libwebp \
		devel/geotiff

WANTLIB += X11 Xext Xrender c cairo crypto curl expat fontconfig
WANTLIB += freetype freexl geos geos_c geotiff gif idn jpeg
WANTLIB += lzma m nghttp2 pixman-1 png proj pthread pthread-stubs spatialite
WANTLIB += sqlite3 ssl c++ c++abi tiff webp xcb xcb-render xcb-shm
WANTLIB += xml2 z

# needed for check_sql_stmt test to succeed - it loads mod_rasterlite2
TEST_DEPENDS =	${BUILD_PKGPATH}

.include <bsd.port.mk>
