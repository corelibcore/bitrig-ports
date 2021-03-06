# $OpenBSD: Makefile,v 1.16 2016/03/18 23:12:20 naddy Exp $

# XXX change proxy settings without network-manager?

COMMENT=		GNOME control center

GNOME_PROJECT=		gnome-control-center
GNOME_VERSION=		3.18.2
REVISION=		1

CATEGORIES=		x11

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += FLAC GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xtst Xxf86vm
WANTLIB += accountsservice atk-1.0 atk-bridge-2.0 atspi avahi-common
WANTLIB += c c++ c++abi cairo cairo-gobject canberra canberra-gtk3
WANTLIB += colord colord-gtk colordprivate com_err crack crypto
WANTLIB += cups dbus-1 dbus-glib-1 drm epoxy execinfo expat ffi
WANTLIB += fontconfig freetype gbm gcrypt gdbm gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glapi glib-2.0 gmodule-2.0 gmp gnome-desktop-3
WANTLIB += goa-1.0 goa-backend-1.0 gobject-2.0 gpg-error graphite2
WANTLIB += grilo-0.2 gstaudio-1.0 gstbase-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 gtk-3 gtop-2.0 harfbuzz hogweed
WANTLIB += ibus-1.0 icudata icuuc idn javascriptcoregtk-4.0 json-c
WANTLIB += json-glib-1.0 kvm lcms2 ltdl lzma m nettle ogg orc-0.4
WANTLIB += p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png polkit-gobject-1 pthread pthread-stubs
WANTLIB += pulse pulse-mainloop-glib pwquality rest-0.7 secret-1
WANTLIB += smbclient sndfile soup-2.4 soup-gnome-2.4 sqlite3 tasn1
WANTLIB += telepathy-glib upower-glib vorbis vorbisenc vorbisfile
WANTLIB += webkit2gtk-4.0 xcb xcb-dri2 xcb-glx xcb-render xcb-shape
WANTLIB += xcb-shm xcb-xfixes xml2 z

MODULES=		devel/gettext \
			security/heimdal \
			x11/gnome

LIB_DEPENDS=		audio/pulseaudio \
			audio/libcanberra,-gtk3 \
			devel/libgtop2 \
			graphics/colord-gtk \
			net/samba \
			print/cups,-libs \
			security/libpwquality \
			sysutils/accountsservice \
			sysutils/upower \
			x11/gnome/desktop \
			x11/gnome/grilo \
			x11/gnome/online-accounts \
			devel/libtalloc

BUILD_DEPENDS=		x11/gnome/settings-daemon \
			devel/iso-codes \
			devel/gsettings-desktop-schemas

RUN_DEPENDS=		x11/gnome/settings-daemon \
			devel/iso-codes \
			devel/gsettings-desktop-schemas

# NOTE that a11y dependencies (e.g. mousetweaks, caribou...) are not
# enforced on purpose.

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=	sysutils/consolekit

# needed for gnome-color-panel
RUN_DEPENDS +=		x11/gnome/color-manager

# needed for gnome-power-panel+gnome-screen-panel
RUN_DEPENDS +=		x11/gnome/power-manager

# needed for gnome-printers-panel
RUN_DEPENDS +=		print/cups-pk-helper

# gkbd-keyboard-display
RUN_DEPENDS +=		x11/gnome/libgnomekbd

# calls grl_registry_load...plugin
RUN_DEPENDS +=		x11/gnome/grilo-plugins

# needed for gnome-region-panel; optional and would create a cyclic dep:
# gnome-session -> gnome-shell -> gnome-control-center -> gnome-session
#RUN_DEPENDS +=		x11/gnome/session

MODGNOME_TOOLS += desktop-file-utils docbook gtk-update-icon-cache yelp
MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNOME_LDFLAGS=	"-L${X11BASE}/lib"
MODGNOME_LDFLAGS+=	-ltalloc

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/gnome-control-center

.include <bsd.port.mk>
