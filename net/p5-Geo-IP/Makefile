# $OpenBSD: Makefile,v 1.30 2016/03/20 19:56:51 naddy Exp $

COMMENT=	look up country by IP address/hostname

MODULES=	cpan
DISTNAME =	Geo-IP-1.45
REVISION =	0
CPAN_AUTHOR=	MAXMIND
CATEGORIES=	net geo

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GeoIP>=8 perl

LIB_DEPENDS=	net/GeoIP>=1.4.8

CONFIGURE_ARGS= LIBS='-L${LOCALBASE}/lib' INC='-I${LOCALBASE}/include'

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	example

pre-patch:
	perl -pi -e 's,/usr/local/share/GeoIP,${LOCALSTATEDIR}/db/GeoIP,g' \
	    ${WRKSRC}/lib/Geo/IP.pm ${WRKSRC}/example/*.pl

.include <bsd.port.mk>
