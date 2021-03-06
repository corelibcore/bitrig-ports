# $OpenBSD: Makefile,v 1.55 2016/03/18 23:12:18 naddy Exp $

COMMENT=		RSS reader plugin for evolution

GNOME_PROJECT=		evolution-rss
GNOME_VERSION=		0.3.95
REVISION=		3

CATEGORIES=		mail

HOMEPAGE=		http://gnome.eu.org/evo/index.php/Evolution_RSS_Reader_Plugin

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject camel-1.2 canberra canberra-gtk3
WANTLIB += cryptui db dbus-1 dbus-glib-1 ebackend-1.2 ebook-1.2
WANTLIB += ebook-contacts-1.2 ecal-1.2 edata-book-1.2 edataserver-1.2
WANTLIB += edataserverui-1.2 enchant epoxy expat ffi fontconfig
WANTLIB += freetype gailutil-3 gbm gck-1 gcr-base-3 gcr-ui-3 gcrypt
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-3
WANTLIB += gobject-2.0 gpg-error graphite2 gstapp-1.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstfft-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 gtkhtml-4.0
WANTLIB += gtkhtml-editor-4.0 gtkspell3-3 harfbuzz harfbuzz-icu
WANTLIB += ical icalss icalvcal icudata icui18n icuuc javascriptcoregtk-3.0
WANTLIB += jpeg ltdl lzma m nspr4 nss3 nssutil3 ogg orc-0.4 p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += plc4 plds4 png pthread pthread-stubs secret-1 smime3
WANTLIB += softokn3 soup-2.4 soup-gnome-2.4 sqlite3 ssl3
WANTLIB += vorbis vorbisfile webkitgtk-3.0 webp xcb xcb-render
WANTLIB += X11-xcb Xxf86vm drm glapi xcb-dri2 xcb-glx xcb-shape
WANTLIB += xcb-xfixes xcb-shm xml2 xslt z
WANTLIB += lib/evolution/eabutil
WANTLIB += lib/evolution/econtacteditor
WANTLIB += lib/evolution/econtactlisteditor
WANTLIB += lib/evolution/email-engine
WANTLIB += lib/evolution/essmime
WANTLIB += lib/evolution/evolution-mail-composer
WANTLIB += lib/evolution/evolution-mail-formatter
WANTLIB += lib/evolution/evolution-mail
WANTLIB += lib/evolution/evolution-shell
WANTLIB += lib/evolution/evolution-smime
WANTLIB += lib/evolution/evolution-util
WANTLIB += lib/evolution/gnomecanvas

MASTER_SITES=		http://gnome.eu.org/

MODULES=		devel/gettext \
			devel/dconf \
			x11/gnome

LIB_DEPENDS=		mail/evolution \
			www/gtkhtml4

MODGNOME_TOOLS=		desktop-file-utils

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-primary-render=webkit

post-install:
	rm ${PREFIX}/lib/evolution/{plugins,modules}/*.{a,la}

.include <bsd.port.mk>
