# $OpenBSD: Makefile,v 1.13 2016/03/11 19:59:13 naddy Exp $

COMMENT=	event notification library

V=		2.0.22
DISTNAME=	libevent-$V-stable
PKGNAME=	libevent-$V
REVISION=	0
CATEGORIES=	devel
HOMEPAGE=	http://libevent.org/

SHARED_LIBS+=	event_core      1.1	# 6.9
SHARED_LIBS+=	event_extra     0.1	# 6.9
SHARED_LIBS+=	event_openssl   0.0	# 6.9
SHARED_LIBS+=	event_pthreads  0.0	# 6.9

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=levent/}

WANTLIB=	crypto pthread ssl

CONFIGURE_STYLE=gnu

MAKE_FLAGS=	RELEASE=""

# Skip compatibility bits that conflict with libevent1
FAKE_FLAGS=	LIBEVENT_LIBS_LA="libevent_core.la libevent_extra.la \
		    libevent_openssl.la libevent_pthreads.la" \
		EVENT1_HDRS=""

.include <bsd.port.mk>
