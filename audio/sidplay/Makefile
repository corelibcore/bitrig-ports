# $OpenBSD: Makefile,v 1.11 2014/10/26 15:24:09 ratchov Exp $

BROKEN=		too awesome c++

COMMENT=	Commodore 64 music player and SID chip emulator

DISTNAME=	sidplay-base-1.0.9
PKGNAME=	${DISTNAME:S/-base//}
REVISION=	3
CATEGORIES=	audio

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m sidplay>=1 sndio
WANTLIB+=		c++ c++abi pthread

MASTER_SITES=	${MASTER_SITE_OPENBSD}
EXTRACT_SUFX=	.tgz

LIB_DEPENDS=	audio/libsidplay

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-sidplay-includes=${LOCALBASE}/include \
		--with-sidplay-library=${LOCALBASE}/lib

post-extract:
	@mkdir -p ${WRKSRC}/audio/sndio
	@cp ${FILESDIR}/audiodrv.cpp ${WRKSRC}/audio/sndio
	@cp ${FILESDIR}/audiodrv.h ${WRKSRC}/audio/sndio

.include <bsd.port.mk>
