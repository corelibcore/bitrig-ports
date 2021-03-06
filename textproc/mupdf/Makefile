# $OpenBSD: Makefile,v 1.63 2016/03/16 16:46:33 naddy Exp $

SHARED_LIBS +=	mupdf 3.0

COMMENT =	graphic library, pdf parser, viewer and utilities

V =		1.8
DISTNAME =	mupdf-$V-source
PKGNAME =	mupdf-$V
REVISION =	2

CATEGORIES =	textproc x11

HOMEPAGE =	http://mupdf.com/

# code: Affero v3 (UGH!)
# font maps: Adobe (redist ok, see headers).
# droid font: Apache.
PERMIT_PACKAGE_CDROM =	Yes

FLAVORS=	js
FLAVOR?=

# uses pledge(2)
WANTLIB += GL X11 Xcursor Xext Xinerama Xrandr c crypto curl freetype
WANTLIB += idn jbig2dec jpeg m nghttp2 openjp2 pthread ssl z

# http://git.ghostscript.com/?p=mupdf.git;a=summary
MASTER_SITES =	http://mupdf.com/downloads/ \
		http://mupdf.com/downloads/archive/

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/xdg-utils
LIB_DEPENDS =	graphics/jbig2dec \
		graphics/jpeg \
		graphics/openjp2>=2.0.1 \
		net/curl

USE_GMAKE =	Yes
NO_TEST =	Yes

.if ${MACHINE_ARCH} == "hppa"
CFLAGS +=	-ffunction-sections
.endif

CFLAGS +=	-fPIC

# -I flags prepend mupdf's own, to allow building with previous ver installed
MAKE_ENV += CFLAGS="${CFLAGS} -I$(WRKSRC)/fitz -I$(WRKSRC)/pdf -I$(WRKSRC)/xps"

#XXX: mupdf segfaults using clang. Try again next time...
MAKE_FLAGS =	CC=cc CXX=c++ \
		HAVE_CURL=yes \
		CURL_LIB="-lcurl" \
		CURL_LIBS="-lpthread -lidn -lssl -lcurl" \
		SYS_OPENSSL_LIBS="-lssl -lcrypto" \
		LDFLAGS="${LDFLAGS}" \
		LIBmupdf_VERSION="${LIBmupdf_VERSION}" \
		build= verbose=yes

FAKE_FLAGS =	NOCURL= prefix=${PREFIX} mandir=${PREFIX}/man

pre-configure:
	cd ${WRKSRC}/; ${SUBST_CMD} Makerules Makethird
	rm -rf ${WRKSRC}/thirdparty/{curl,freetype,jbig2dec,jpeg,openjpeg,zlib} # use from ports
	#rm -rf ${WRKSRC}/thirdparty/glfw # not yet in ports, doesn't build here
.if !${FLAVOR:Mjs}
	rm -rf ${WRKSRC}/thirdparty/mujs # not building with javascript support
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{applications,pixmaps}
	${INSTALL_DATA} ${FILESDIR}/mupdf.xpm ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${FILESDIR}/mupdf.desktop ${PREFIX}/share/applications/
	cd ${PREFIX}/bin; ln -s mupdf-x11 mupdf

.include <bsd.port.mk>
