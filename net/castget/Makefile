# $OpenBSD: Makefile,v 1.17 2015/10/30 12:47:40 sthen Exp $

COMMENT=		command-line podcast downloader

DISTNAME=		castget-1.0.1
REVISION=		6
SHARED_LIBS +=	castget              0.0      # .0.0
CATEGORIES=		net

HOMEPAGE=		http://www.nongnu.org/castget

MASTER_SITES=          	${MASTER_SITE_SAVANNAH:=castget/}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto curl glib-2.0 id3 idn lzma m nghttp2 pcre pthread
WANTLIB += ssl c++ c++abi xml2 z

MODULES=		devel/gettext

LIB_DEPENDS=            audio/id3lib \
			devel/glib2 \
			net/curl \
			textproc/libxml

CONFIGURE_STYLE=        gnu
CONFIGURE_ENV=          CPPFLAGS="-lm -I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/castget
	${INSTALL_DATA} ${WRKSRC}/castgetrc.example \
		${PREFIX}/share/examples/castget

.include <bsd.port.mk>
