# $OpenBSD: Makefile,v 1.10 2016/01/27 15:59:03 naddy Exp $

COMMENT=	encode, inspect, and decode Opus files

DISTNAME=	opus-tools-0.1.9
REVISION=	1
CATEGORIES=	audio

HOMEPAGE=	http://opus-codec.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/opus/ \
		https://ftp.mozilla.org/pub/mozilla.org/opus/

LIB_DEPENDS=	audio/flac audio/libogg audio/opus
WANTLIB=	FLAC c m ogg opus sndio

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-maintainer-mode

# OpenBSD uses PIE by default anyway on archs where it actually works
CONFIGURE_ARGS+=--disable-pie

.include <bsd.port.mk>
