# $OpenBSD: Makefile,v 1.294 2016/03/19 13:37:37 landry Exp $

COMMENT =	Mozilla web browser

# Don't forget to bump www/firefox-i18n after updates.

MOZILLA_VERSION =	45.0.1
MOZILLA_BRANCH =	release
MOZILLA_PROJECT =	firefox
MOZILLA_CODENAME =	browser
BROKEN-sparc64 =	xpcshell SIGBUS during fake
EXTRACT_SUFX =		.tar.xz

SO_VERSION =	63.0
# NOTE: Must bump minor version if any shlib's are removed from the
# components dir to avoid pkg_add -r issues.
MOZILLA_LIBS =	browsercomps mozgtk xul clearkey lgpllibs

CATEGORIES =	www

# mozilla public license
PERMIT_PACKAGE_CDROM=	Yes

# lots of logic in mozilla.port.mk
MODULES =	www/mozilla devel/gettext lang/python

MODPY_RUNDEP =	No

# firefox >= 44 doesnt build with base libevent
MOZILLA_USE_BUNDLED_LIBEVENT =	Yes

# Regression tests are too hard to adapt to run here
NO_TEST =	Yes

CONFIGURE_STYLE =	gnu

MODGNU_CONFIG_GUESS_DIRS =	${WRKDIST}/build/autoconf \
				${WRKDIST}/intl/icu/source \
				${WRKDIST}/ipc/chromium/src/third_party/libevent \
				${WRKDIST}/js/src/ctypes/libffi \
				${WRKDIST}/memory/jemalloc/src \
				${WRKDIST}/modules/freetype2/builds/unix \
				${WRKDIST}/nsprpub/build/autoconf \
				${WRKDIST}/toolkit/crashreporter/google-breakpad/autotools \
				${WRKDIST}/toolkit/crashreporter/google-breakpad/src/third_party/glog/

# to be able to link when building with clang on i386 or gcc on ppc
.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ARGS +=	--disable-debug-symbols
.endif

# relies on pulseaudio for sound and broken at runtime
CONFIGURE_ARGS +=	--disable-webrtc

# bug #1064665
LIB_DEPENDS +=	textproc/icu4c
CONFIGURE_ARGS += --with-system-icu
WANTLIB += icudata icui18n icuuc

CONFIGURE_ARGS +=	--disable-gstreamer

# bug 857628
CONFIGURE_ARGS +=	--enable-pie

post-install:
	${SUBST_MAN} ${FILESDIR}/mozilla-firefox.1 \
		${PREFIX}/man/man1/mozilla-firefox.1
	cd ${PREFIX}/man/man1/ && ln -sf mozilla-firefox.1 firefox.1
	cd ${PREFIX}/bin/ && ln -sf firefox mozilla-firefox
	# install prefs
	${INSTALL_DATA_DIR} ${PREFIX}/lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/browser/defaults/preferences
	${SUBST_DATA} ${FILESDIR}/all-openbsd.js \
		${PREFIX}/lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/browser/defaults/preferences/all-openbsd.js
	# install desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${SUBST_DATA} ${FILESDIR}/${MOZILLA_PROJECT}.desktop \
		${PREFIX}/share/applications/${MOZILLA_PROJECT}.desktop
	# install icon for desktop file
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${PREFIX}/lib/${MOZILLA_PROJECT}-${MOZILLA_VER}/browser/icons/mozicon128.png \
		${PREFIX}/share/pixmaps/firefox.png

	# link default48.png to default.png to be used by default by non-icccm compliant wm
	ln ${PREFIX}/lib/firefox-${MOZILLA_VER}/browser/chrome/icons/default/default{48,}.png

.include <bsd.port.mk>
