# $OpenBSD: Makefile,v 1.9 2016/03/18 21:38:24 naddy Exp $

COMMENT=	scim input method module for fcitx

V=		3.1.1
DISTNAME=	scim-fcitx.$V
PKGNAME=	scim-fcitx-$V
REVISION=	3

CATEGORIES=	inputmethods chinese

HOMEPAGE=	http://www.scim-im.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m scim-1.0 pthread
WANTLIB +=	c++ c++abi

MODULES=	devel/gettext

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scim/}
EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=	inputmethods/scim

WRKDIST=	${WRKDIR}/fcitx
LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-static
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
