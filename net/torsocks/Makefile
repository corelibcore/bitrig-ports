# $OpenBSD: Makefile,v 1.7 2015/11/04 16:05:51 giovanni Exp $

COMMENT =		socks proxy for use with tor

DISTNAME =		torsocks-1.2
REVISION =		3

SHARED_LIBS =		torsocks	0.0 # 1.0

CATEGORIES =		net

HOMEPAGE =		https://code.google.com/p/torsocks

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += pthread

MASTER_SITES =		https://torsocks.googlecode.com/files/

RUN_DEPENDS =		net/tor

FAKE_FLAGS =		CONFDIR=${PREFIX}/share/examples/torsocks


CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/torsocks.in

.include <bsd.port.mk>
