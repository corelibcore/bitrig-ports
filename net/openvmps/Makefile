# $OpenBSD: Makefile,v 1.10 2015/07/21 17:59:03 jca Exp $

COMMENT=	free implementation of Cisco VMPS

V=		1.4.06
DISTNAME=	vmpsd-${V}
PKGNAME=	openvmps-${V}
REVISION=	0
CATEGORIES=	net

HOMEPAGE=	http://vmps.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=vmps/}

CONFIGURE_STYLE=gnu

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/openvmps

.include <bsd.port.mk>
