# $OpenBSD: Makefile,v 1.16 2015/12/16 23:26:14 sthen Exp $

COMMENT=	lightweight DLNA/UPnP-AV media server (aka ReadyMedia)

V=		1.1.5
REVISION=	2
DISTNAME=	minidlna-$V
PKGNAME=	minidlna-$V

CATEGORIES=	multimedia

HOMEPAGE=	http://sourceforge.net/projects/minidlna/

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += FLAC avformat avutil c exif id3tag jpeg ogg
WANTLIB += pthread sqlite3 vorbis

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=minidlna/}

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= --with-log-path=/var/log/minidlna \
		--with-db-path=/var/db/minidlna \
		--with-os-url=http://www.openbsd.org/
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

MODULES=	devel/gettext
LIB_DEPENDS=	audio/flac \
		audio/libid3tag \
		graphics/ffmpeg \
		graphics/jpeg \
		graphics/libexif

NO_TEST=	Yes
E=		${PREFIX}/share/examples/minidlna

post-install:
	${INSTALL_DATA_DIR} $E
	${INSTALL_DATA} ${WRKSRC}/minidlna.conf $E

.include <bsd.port.mk>
