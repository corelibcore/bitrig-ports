# $OpenBSD: Makefile,v 1.42 2016/03/11 20:28:31 naddy Exp $

COMMENT=		crypto library based on code used in GnuPG

DISTNAME=		libgcrypt-1.6.5
CATEGORIES=		security

SHARED_LIBS +=  gcrypt               19.2     # 20.5

HOMEPAGE=		http://www.gnupg.org/

# GPLv2/LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gpg-error

MASTER_SITES=	${MASTER_SITES_GNUPG:=libgcrypt/}

MODULES=		devel/gettext
LIB_DEPENDS=		security/libgpg-error

# really bad asm that doesn't compile
.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ENV +=        CC=gcc CXX=g++
.endif

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-static

.include <bsd.port.mk>
