# $OpenBSD: Makefile,v 1.12 2016/03/11 20:11:39 naddy Exp $

COMMENT=		minimal XML library
DISTNAME=		mxml-2.9
CATEGORIES=		textproc

REVISION=		0

SHARED_LIBS=		mxml	0.2	# 1.5

HOMEPAGE=		http://www.msweet.org/projects.php?Z3

# LGPLv2 with exceptions
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MASTER_SITES=		http://www.msweet.org/files/project3/

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=	--disable-threads
CONFIGURE_ENV+=		LIBmxml_VERSION=${LIBmxml_VERSION}
MAKE_ENV+=		LIBmxml_VERSION=${LIBmxml_VERSION}

NO_TEST=		Yes

.include <bsd.port.mk>
