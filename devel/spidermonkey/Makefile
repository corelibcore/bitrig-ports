# $OpenBSD: Makefile,v 1.32 2016/03/20 16:12:24 naddy Exp $

# jsapi-tests crashes in js::MarkRangeConservatively() on hppa (SIGSEGV in js/src/jsgc.cpp:1142)
# jsapi-tests crashes in js::Bindings::switchToScriptStorage() on alpha (SIGBUS in jsutil.h:235)
# jsapi-tests crashes in js::Bindings::switchToScriptStorage() on sparc64 & mips64 (SIGBUS in jsutil.h:33)
# but let's keep them to build more packages
ONLY_FOR_ARCHS =	alpha amd64 i386 hppa mips64el mips64 powerpc sparc64

COMMENT =		Mozilla C implementation of JavaScript

MOZILLA_VERSION =	24
SUBST_VARS +=		MOZILLA_VERSION

DISTNAME =		mozjs-${MOZILLA_VERSION}.2.0
EXTRACT_SUFX =		.tar.bz2
PKGNAME =		spidermonkey-${MOZILLA_VERSION}.2.0
PKGSPEC =		spidermonkey->=24.0,<25.0
REVISION =		7

SO_VERSION =		0.0
SHARED_LIBS =		mozjs-24 ${SO_VERSION}
CATEGORIES =		devel

HOMEPAGE =		https://developer.mozilla.org/en-US/docs/Mozilla/Projects/SpiderMonkey
MASTER_SITES =		http://ftp.mozilla.org/pub/mozilla.org/js/
#https://groups.google.com/forum/#!topic/mozilla.dev.tech.js-engine/h6pw_gCCsfU

# MPL
PERMIT_PACKAGE_CDROM=	Yes

MODULES =		lang/python

# sync with games/0ad/base x11/gnome/builder x11/gnome/shell x11/gnome/gjs
#MODULES +=		gcc4
#MODGCC4_ARCHS =		*
#MODGCC4_LANGS =		c c++

MODGNU_CONFIG_GUESS_DIRS =	${WRKSRC}/../../intl/icu/source/  \
				${WRKSRC}/../../js/src/ctypes/libffi/ \
				${WRKSRC}/../../js/src/build/autoconf/

WANTLIB += c m pthread readline nspr4 ncurses plc4 plds4 z

MODPY_RUNDEP =		No
TEST_DEPENDS =		${MODPY_RUN_DEPENDS}
LIB_DEPENDS =		devel/nspr \
			devel/readline

WRKDIST =		${WRKDIR}/${DISTNAME}/js/src
USE_GMAKE =		yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-pthread \
			--with-system-nspr \
			--enable-readline \
			--enable-ctypes \
			--disable-intl-api \
			--enable-threadsafe

CONFIGURE_ENV +=	SO_VERSION="${SO_VERSION}" \
			MOZILLA_VERSION="${MOZILLA_VERSION}" \
			LIBS=-lncurses
CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

post-install:
	rm ${PREFIX}/lib/libmozjs-${MOZILLA_VERSION}.a
.ifndef DEBUG
	${STRIP} ${PREFIX}/bin/js${MOZILLA_VERSION}
	${STRIP} ${PREFIX}/lib/libmozjs-${MOZILLA_VERSION}.so.${LIBmozjs-24_VERSION}
.endif

.include <bsd.port.mk>
