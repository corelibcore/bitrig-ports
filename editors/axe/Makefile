# $OpenBSD: Makefile,v 1.31 2016/03/16 18:36:37 naddy Exp $

BROKEN=			needs work on bitrig

COMMENT=		simple to use text editor for X11

DISTNAME=		aXe-6.1.2
PKGNAME=		${DISTNAME:L}
REVISION=		4
CATEGORIES=		editors

# "other than commercial exploitation"
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=		ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c

MASTER_SITES=		${MASTER_SITE_XCONTRIB:=editors/}
EXTRACT_SUFX=		.tar.Z

CONFIGURE_STYLE=	imake
NO_TEST=		Yes

.include <bsd.port.mk>
