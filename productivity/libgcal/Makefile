# $OpenBSD: Makefile,v 1.5 2016/03/11 19:59:16 naddy Exp $

CATEGORIES =		productivity devel
COMMENT =		C library for Google calendar and contacts
DISTNAME =		libgcal-0.9.6
HOMEPAGE =		https://code.google.com/p/libgcal/
REVISION =		2

SHARED_LIBS =		gcal	0.0

# BSDL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += crypto curl idn lzma m nghttp2 pthread ssl xml2 z

MASTER_SITES =		https://libgcal.googlecode.com/files/
EXTRACT_SUFX =		.tar.bz2

CONFIGURE_STYLE =	gnu
MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC}/scripts

MODULES =		devel/gettext
BUILD_DEPENDS =		devel/check
LIB_DEPENDS =		net/curl \
			textproc/libxml

SEPARATE_BUILD =	Yes

.include <bsd.port.mk>
