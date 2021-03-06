# $OpenBSD: Makefile,v 1.10 2016/03/16 16:46:33 naddy Exp $

COMMENT-main =		modular SIP User-Agent with audio and video support
COMMENT-gtk2 =		GTK+2-based modules for baresip

V =			0.4.17
DISTNAME =		baresip-$V
PKGNAME-main =		baresip-$V
PKGNAME-gtk2 =		baresip-gtk2-$V

WANTLIB-main += X11 Xext avcodec avdevice avformat avutil c daalabase
WANTLIB-main += daaladec daalaenc gsm m opus png pthread re rem sndfile
WANTLIB-main += sndio spandsp speex speexdsp swscale v4l2 vpx x264 x265

WANTLIB-gtk2 += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB-gtk2 += Xrandr Xrender atk-1.0 cairo fontconfig freetype gdk-x11-2.0
WANTLIB-gtk2 += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gstapp-1.0
WANTLIB-gtk2 += gstbase-1.0 gstreamer-1.0 gtk-x11-2.0 intl pango-1.0
WANTLIB-gtk2 += pangocairo-1.0 pangoft2-1.0 re z

BUILD_DEPENDS =		telephony/libzrtp
LIB_DEPENDS-main =	audio/gsm \
			audio/libsndfile \
			audio/opus \
			audio/speex \
			graphics/ffmpeg \
			graphics/png \
			multimedia/daala \
			multimedia/libv4l \
			multimedia/libvpx \
			telephony/baresip/re>=0.4.14 \
			telephony/baresip/rem \
			telephony/spandsp
LIB_DEPENDS-gtk2 =	devel/libnotify \
			multimedia/gstreamer1/plugins-base \
			x11/gtk+2,-main
RUN_DEPENDS-gtk2 =	telephony/baresip/baresip,-main \

MAKE_ENV +=		LIBRE_INC=${LOCALBASE}/include/re \
			LIBRE_SO=${LOCALBASE}/lib LIBS="-lm -lrem" \

MAKE_FLAGS +=		MOD_AUTODETECT= \
			EXTRA_MODULES="echo daala h265 snapshot sndio zrtp" \
			USE_AMR=yes USE_AVCODEC=yes USE_AVFORMAT=yes \
			USE_CONS=yes USE_DTLS=yes USE_DTLS_SRTP=yes \
			USE_FFMPEG=yes USE_G711=yes USE_G722=yes USE_G726=yes \
			USE_GSM=yes USE_L16=yes USE_OPUS=yes USE_PLC=yes \
			USE_SNDFILE=yes USE_SNDIO=yes USE_SPEEX=yes \
			USE_SPEEX_AEC=yes USE_SPEEX_PP=yes USE_SRTP=yes \
			USE_STDIO=yes USE_SYSLOG=yes USE_UUID=yes USE_V4L2=yes \
			USE_VPX=yes USE_X11=yes \
			HAVE_LIBV4L2=yes HAVE_SPEEXDSP=yes

MULTI_PACKAGES = -main -gtk2
PSEUDO_FLAVORS = no_gtk2
FLAVOR ?=

.include <bsd.port.arch.mk>

.if ${FLAVOR:L:Mno_gtk2}
BUILD_PACKAGES :=	${BUILD_PACKAGES:N-gtk2}
.endif

.if ${BUILD_PACKAGES:M-gtk2}
MAKE_FLAGS +=		USE_GST1=yes USE_GST_VIDEO1=yes USE_GTK=yes
.endif


# Ideally these should be enabled, but it doesn't seem to be possibe ATM, as
# the required dependencies are not in place.
#MAKE_FLAGS +=	USE_BV32=yes # XXX http://www.broadcom.com/support/broadvoice/downloads.php
#MAKE_FLAGS +=	USE_G722_1=yes # XXX FreeSWITCH???
#MAKE_FLAGS +=	USE_ILBC=yes # XXX http://ilbcfreeware.org/
#MAKE_FLAGS +=	USE_ISAC=yes # XXX FreeSWITCH??? (was used in Google Talk)
#MAKE_FLAGS +=	USE_SDL2=yes # XXX Appears to be broken


#CFLAGS +=		-I${LOCALBASE}/include/re

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/baresip/modules \
	                    ${PREFIX}/share/baresip
	${INSTALL_PROGRAM} ${WRKBUILD}/baresip ${PREFIX}/bin
	[ ! -r ${WRKBUILD}/sndio.so ] || ${INSTALL_DATA} ${WRKBUILD}/*.so \
	                    ${PREFIX}/lib/baresip/modules
	${INSTALL_DATA} ${WRKBUILD}/share/* ${PREFIX}/share/baresip

.include <bsd.port.mk>
