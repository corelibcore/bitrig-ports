# $OpenBSD: Makefile,v 1.22 2016/03/11 20:28:28 naddy Exp $

COMMENT=		Quasar DV codec

DISTNAME=		libdv-1.0.0
REVISION=		2

CATEGORIES=		multimedia

SHARED_LIBS +=  dv                   5.0      # 4.3

HOMEPAGE=		http://libdv.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m popt pthread

MODULES=		devel/gettext

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libdv/}

LIB_DEPENDS=		devel/popt

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-sdl \
			--disable-gtk \
			--with-x
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread"

.include <bsd.port.mk>
