# $OpenBSD: Makefile,v 1.12 2016/01/10 16:23:17 sthen Exp $

COMMENT=	client and servers for the WIDE DHCPv6 protocol

DISTNAME=	wide-dhcpv6-20080615
REVISION=	6
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wide-dhcpv6/}

HOMEPAGE=	http://wide-dhcpv6.sourceforge.net/

PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	gnu

WANTLIB=		c
NO_TEST=		Yes

pre-build:
	@perl -pi -e s,dprintf,debugprintf, ${WRKSRC}/*

do-install:
.for p in dhcp6c dhcp6s dhcp6relay dhcp6ctl
	${INSTALL_PROGRAM} ${WRKSRC}/$p ${PREFIX}/sbin
	@mv ${WRKSRC}/$p.8 ${WRKSRC}/$p.8.dist
	@sed s!/usr/local/etc!${SYSCONFDIR}!g < ${WRKSRC}/$p.8.dist > \
		${WRKSRC}/$p.8
	${INSTALL_MAN} ${WRKSRC}/$p.8 ${PREFIX}/man/man8
.endfor
.for m in dhcp6c.conf.5 dhcp6s.conf.5
	@mv ${WRKSRC}/$m ${WRKSRC}/$m.dist
	@sed s!/usr/local/etc!${SYSCONFDIR}!g < ${WRKSRC}/$m.dist > \
		${WRKSRC}/$m
	${INSTALL_MAN} ${WRKSRC}/$m ${PREFIX}/man/man5
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wide-dhcpv6
	${INSTALL_DATA} ${WRKSRC}/dhcp6s.conf.sample \
		${PREFIX}/share/examples/wide-dhcpv6/
	${INSTALL_DATA} ${WRKSRC}/dhcp6c.conf.sample \
		${PREFIX}/share/examples/wide-dhcpv6/

.include <bsd.port.mk>
