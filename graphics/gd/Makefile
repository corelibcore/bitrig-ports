# $OpenBSD: Makefile,v 1.65 2015/11/14 12:54:19 sthen Exp $

COMMENT=	library for dynamic creation of images

V=		2.1.1
REVISION=	0
DISTNAME=	libgd-$V
PKGNAME=	gd-$V

SHARED_LIBS +=	gd                   21.1     # 3.0

CATEGORIES=	graphics

HOMEPAGE=	http://www.libgd.org/

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c expat fontconfig freetype jpeg m png pthread
WANTLIB += pthread-stubs tiff vpx z
WANTLIB += c++ c++abi

MASTER_SITES=	https://bitbucket.org/libgd/gd-libgd/downloads/

CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/config
CONFIGURE_ARGS+= --without-xpm

LIB_DEPENDS=	graphics/jpeg \
		graphics/png \
		graphics/tiff \
		multimedia/libvpx

MODULES=	converters/libiconv

.include <bsd.port.mk>
