# $OpenBSD: Makefile,v 1.61 2016/03/11 20:28:24 naddy Exp $

COMMENT=	perl-compatible regular expression library

DISTNAME=	pcre-8.38

SHARED_LIBS +=  pcre                 3.0      # 0.1
SHARED_LIBS +=  pcre16               0.0      # 0.0
SHARED_LIBS +=  pcreposix            1.5      # 0.0
SHARED_LIBS +=  pcrecpp              3.3      # 0.0

CATEGORIES=	devel
DPB_PROPERTIES=	parallel

MASTER_SITES=	http://ftp.csx.cam.ac.uk/pub/software/programming/pcre/ \
		ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/

HOMEPAGE=	http://www.pcre.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c curses m readline
WANTLIB += c++ c++abi pthread
LIB_DEPENDS=		devel/readline

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--enable-pcre8 \
			--enable-pcre16 \
			--enable-utf \
			--enable-unicode-properties \
			--enable-pcretest-libreadline

.include <bsd.port.mk>
