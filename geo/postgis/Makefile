# $OpenBSD: Makefile,v 1.29 2016/03/18 23:12:17 naddy Exp $

V =	2.2.0
COMMENT=	geographic objects support for PostgreSQL
DISTNAME=	postgis-${V}
REVISION=	2
CATEGORIES=	geo databases

SHARED_LIBS +=	lwgeom 0.0 lwgeom-2.2 0.0 # 4.0

HOMEPAGE=	http://www.postgis.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://download.osgeo.org/postgis/source/

WANTLIB=	c geos_c m pq>=5.3 proj xml2 z
WANTLIB +=	curl expat gdal geos geotiff gif idn nghttp2
WANTLIB +=	jasper jpeg json-c png pthread ssl c++ c++abi tiff
WANTLIB +=	freexl pcre spatialite sqlite3
WANTLIB +=	crypto openjp2 lzma

MODULES =	devel/gettext databases/postgresql

LIB_DEPENDS=	geo/gdal \
		devel/json-c
RUN_DEPENDS=	databases/postgresql,-server
BUILD_DEPENDS=	${RUN_DEPENDS} \
		textproc/docbook-xsl \
		textproc/wdg-sgml-lib \
		graphics/ImageMagick

USE_GMAKE=	Yes
USE_LIBTOOL =	Yes
#for iconv.h
CONFIGURE_ENV=	LDFLAGS=-L${LOCALBASE}/lib \
		CFLAGS=-I${LOCALBASE}/include
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-xsldir=${PREFIX}/share/xsl/docbook/ \
		--libdir=${PREFIX}/lib/postgresql

SUBST_VARS +=	V
DOCDIR =	${PREFIX}/share/doc/postgresql/postgis/

post-install:
	cd ${WRKSRC}/doc && WRKINST=${WRKINST} ${MAKE_PROGRAM} docs-install man-install
	${INSTALL_DATA_DIR} ${DOCDIR}/images/
	$(INSTALL_DATA) ${WRKSRC}/doc/html/style.css ${DOCDIR}/
	$(INSTALL_DATA) ${WRKSRC}/doc/html/images/* ${DOCDIR}/images/

.include <bsd.port.mk>
