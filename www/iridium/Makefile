# $OpenBSD: Makefile,v 1.47 2016/03/09 14:21:23 naddy Exp $

ONLY_FOR_ARCHS=		i386 amd64
DPB_PROPERTIES=		parallel

COMMENT=		Iridium browser

V=			48.2
DISTNAME=		iridium-browser-${V}
PKGNAME=		iridium-${V}
REVISION=		1

WRKDIST=		${WRKDIR}/${DISTNAME:S/rc1//}

# The update from 43.4 to 43.5 is released as a patch
# this time due to the size of the tarball.
# XXX keep these lines for further releases
#PATCHFILES+=		iridium-browser-44.0-rc1-final.diff
#PATCH_DIST_STRIP=	-p1

CATEGORIES=		www

HOMEPAGE=		https://iridiumbrowser.de/

EXTRACT_SUFX=		.tar.xz

FLAVORS=		debug
FLAVOR?=

# BSD-like
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP =	Yes

MASTER_SITES=	https://downloads.iridiumbrowser.de/source/ \
		http://nerd.hu/distfiles/

MODULES=	lang/clang lang/python

MODPY_RUNDEP=	No

PATCHORIG=	.orig.port

# uses pledge()
WANTLIB += X11 Xext Xfixes Xrender Xss c cairo cups dbus-1 event
WANTLIB += execinfo expat fontconfig freetype gconf-2 gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0
WANTLIB += png pthread
WANTLIB += xml2 xslt
WANTLIB += sndio
WANTLIB += Xcomposite
WANTLIB += c++ c++abi
WANTLIB += Xi Xtst
WANTLIB += Xdamage
WANTLIB += Xcursor Xrandr gio-2.0
WANTLIB += nspr4 nss3 nssutil3 smime3
WANTLIB += atk-1.0 gmodule-2.0

RUN_DEPENDS=	devel/xdg-utils \
		devel/desktop-file-utils \
		fonts/noto/fonts \
		graphics/libexif \
		x11/gnome/libgnome-keyring \
		x11/gtk+3,-guic
BUILD_DEPENDS=	archivers/bzip2 \
		devel/gperf \
		devel/bison \
		devel/yasm \
		shells/bash \
		sysutils/flock \
		sysutils/pciutils \
		x11/gnome/libgnome-keyring \
		devel/ninja
LIB_DEPENDS=	devel/libexecinfo \
		security/nss \
		devel/gconf2 \
		textproc/libxslt \
		x11/gtk+2 \
		print/cups,-libs \
		lang/gcc/4.9,-libs>=4.9,<4.10

.include <bsd.own.mk>

# Set BUILDTYPE to Debug for a debug build
.if ${FLAVOR:Mdebug}
BUILDTYPE=	Debug
.else
BUILDTYPE=	Release
.endif

TEST_TARGET=	base_unittests

CONFIGURE_STYLE=none # prevent python MODULE from overriding do-build
CONFIGURE_ENV=	CPPFLAGS="-idirafter ${LOCALBASE}/include -idirafter ${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		GYP_GENERATORS=ninja

ALL_TARGET=	chrome

BUILDDIR=	${WRKSRC}/out/${BUILDTYPE}

GYP_DEFS=	-Duse_system_bzip2=1 \
		-Duse_system_libevent=1 \
		-Duse_system_libjpeg=0 \
		-Duse_system_libpng=1 \
		-Duse_system_libusb=0 \
		-Duse_system_libvpx=0 \
		-Duse_system_libxml=1 \
		-Duse_system_sqlite=0 \
		-Duse_system_yasm=1 \
		-Duse_system_zlib=0 \
		-Duse_system_ssl=0 \
		-Duse_system_icu=0 \
		-Ddisable_nacl=1 \
		-Dlinux_breakpad=0 \
		-Duse_allocator=none \
		-Dlinux_strip_binary=0 \
		-Dlinux_use_heapchecker=0 \
		-Denable_webrtc=0 \
		-Denable_one_click_signin=1 \
		-Duse_kerberos=0 \
		-Duse_sndio=1 \
		-Duse_aura=1 \
		-Dclang=1 \
		-Dclang_use_chrome_plugins=0 \
		-Dwerror= \
		-Dno_gc_sections=1 \
		-Ddisable_fatal_linker_warnings=1 \
		-Dv8_use_external_startup_data=0 \
		-Dlibraries_for_target='-lc++ -lc++abi' \
		-DOS=openbsd

# Note: these keys are for OpenBSD use ONLY. For your own distribution,
# please get your own set of keys. It's free!
GYP_DEFS+=	-Dgoogle_api_key='AIzaSyA015yecfJyWi8UQpneQVrNzIKlxjv4MhI' \
		-Dgoogle_default_client_id='451220141585.apps.googleusercontent.com' \
		-Dgoogle_default_client_secret='nQcDyaBvDyCeDrsRqKIWSHJn' \
		-Dffmpeg_branding=Chrome \
		-Dproprietary_codecs=1

.if ${MACHINE_ARCH} == "i386"
CARCH=		i386
.elif ${MACHINE_ARCH} == "amd64"
CARCH=		x86_64
.endif

REL!=		uname -r

.if ${FLAVOR:Mdebug}
GYP_DEFS+=	-Dremove_webcore_debug_symbols=1
MAKE_ENV+=	V=1
.endif

MODPY_ADJ_FILES=build/linux/unbundle/replace_gyp_files.py

pre-configure:
	@ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
.for _arch in x64 ia32
	@cp -pR ${WRKSRC}/third_party/ffmpeg/chromium/config/Chrome/linux/${_arch}/libavutil \
		${WRKSRC}/third_party/ffmpeg/chromium/config/Chrome/openbsd/${_arch}/libavutil
.endfor
	@mkdir -p ${WRKSRC}/media/audio/sndio ${WRKSRC}/media/audio/openbsd
	@cp ${FILESDIR}/sndio_output.{cc,h} ${WRKSRC}/media/audio/sndio
	@cp ${FILESDIR}/audio_manager_openbsd.{cc,h} ${WRKSRC}/media/audio/openbsd
	# XXX Create a missing html file to avoid a build failure (unused in the actual package)
	@touch ${WRKSRC}/chrome/test/data/webui/i18n_process_css_test.html

# gyp_chromium generates all the Makefiles from gyp
do-configure:
	cd ${WRKSRC} && \
		build/linux/unbundle/replace_gyp_files.py ${GYP_DEFS} && \
		env -i ${CONFIGURE_ENV} ${MODPY_BIN} build/gyp_chromium \
		${GYP_DEFS} "--depth=${WRKSRC}"

do-build:
	# Build all the resources as the first step to avoid build failures
	# due to internal dependency issues.
	@cd ${WRKSRC}/out/${BUILDTYPE} && \
	for _r in generate_version_info cloud_policy_proto net_interfaces suggestions \
	cacheinvalidation cacheinvalidation_proto_cpp gfx_vector_icons \
	data_reduction_proxy_proto cloud_policy_code_generate \
	$$(ninja -t targets | grep -E '(mojo_bindings|resources): phony' | grep -v test | cut -d ':' -f1); do \
		cd ${WRKSRC} && env -i ${MAKE_ENV} ninja \
			-j ${MAKE_JOBS} -C out/${BUILDTYPE} $${_r}; \
	done
	@cd ${WRKSRC} && env -i ${MAKE_ENV} ninja \
		-j ${MAKE_JOBS} -C out/${BUILDTYPE} ${ALL_TARGET}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/iridium
	${INSTALL_PROGRAM} ${BUILDDIR}/chrome ${PREFIX}/iridium/iridium
	${SUBST_PROGRAM} ${FILESDIR}/iridium ${PREFIX}/bin/iridium
	${INSTALL_MAN} ${BUILDDIR}/chrome.1 ${PREFIX}/man/man1/iridium.1

	${INSTALL_DATA} ${BUILDDIR}/*.pak ${PREFIX}/iridium

	${INSTALL_DATA_DIR} ${PREFIX}/iridium/locales
	${INSTALL_DATA} ${BUILDDIR}/locales/* ${PREFIX}/iridium/locales
	${INSTALL_DATA} ${BUILDDIR}/*.png ${PREFIX}/iridium
	${INSTALL_DATA_DIR} ${PREFIX}/iridium/resources
	@cp -Rp ${BUILDDIR}/resources/* ${PREFIX}/iridium/resources
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/iridium/resources
.for f in libexif.so protoc icudtl.dat mksnapshot
	${INSTALL_DATA} ${BUILDDIR}/${f} ${PREFIX}/iridium
.endfor
.for s in 22 24 48 64 128 256
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/${s}x${s}/apps
	${INSTALL_DATA} ${WRKSRC}/chrome/app/theme/chromium/product_logo_${s}.png \
		${PREFIX}/share/icons/hicolor/${s}x${s}/apps/iridium.png
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${FILESDIR}/iridium-browser.desktop \
		${PREFIX}/share/applications/iridium-browser.desktop

.include <bsd.port.mk>
