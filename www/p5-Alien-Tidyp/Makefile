# $OpenBSD: Makefile,v 1.5 2016/03/20 19:57:13 naddy Exp $

COMMENT=	building, finding and using tidyp library

DISTNAME=	Alien-Tidyp-v1.4.7
PKGNAME=	p5-${DISTNAME:S/v//}
REVISION=	0
CATEGORIES=	www
MODULES=	cpan
PKG_ARCH=	*

# Perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	modbuild
CONFIGURE_ENV+= 	TIDYP_DIR=${LOCALBASE}

BUILD_DEPENDS=		devel/p5-File-ShareDir \
			archivers/p5-Archive-Extract \
			www/tidyp

.include <bsd.port.mk>
