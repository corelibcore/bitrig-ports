# $OpenBSD: Makefile,v 1.24 2016/03/20 19:56:21 naddy Exp $

COMMENT=	event loop processing

MODULES=	cpan
DISTNAME=	Event-1.24
CATEGORIES=	devel
REVISION=	0

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c perl

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	demo
SRCDIR=			${WRKSRC}/${MODCPAN_EXAMPLES_DIST}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/p5-Event
	${INSTALL_DATA} ${WRKSRC}/Tutorial.pdf ${PREFIX}/share/doc/p5-Event
	${MODCPAN_POST_INSTALL}
	${INSTALL_DATA} ${SRCDIR}/* ${MODCPAN_EXAMPLES_DIR}

.include <bsd.port.mk>
