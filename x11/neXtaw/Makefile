# $OpenBSD: Makefile,v 1.15 2016/03/11 19:59:17 naddy Exp $

COMMENT=		libXaw widget set replacement

DISTNAME=		neXtaw-0.15.1
REVISION=		2

SHARED_LIBS +=	neXtaw               15.1     # .15.1
CATEGORIES=		x11 devel

HOMEPAGE=		http://siag.nu/neXtaw/

# X11
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ICE SM X11 Xau Xdmcp Xext Xmu Xt \
			pthread-stubs xcb

MASTER_SITES=		http://siag.nu/pub/neXtaw/

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS="-I${X11BASE}/include"

.include <bsd.port.mk>
