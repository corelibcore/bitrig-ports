# $OpenBSD: Makefile,v 1.133 2016/01/12 16:38:29 ajacoutot Exp $

COMMENT=		portable library for obtaining system information

GNOME_VERSION=		2.32.0
GNOME_PROJECT=		libgtop
PKGNAME=		libgtop2-${VERSION}
REVISION=		0

SHARED_LIBS=		gtop-2.0	10.0	# .10.0

CATEGORIES=		devel

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += Xau c ffi glib-2.0 gobject-2.0 kvm pcre pthread

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/glib2

MODGNOME_TOOLS +=	gobject-introspection

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		GMSGFMT="${LOCALBASE}/bin/msgfmt" \
			ac_cv_header_sys_mount_h=yes

.ifdef DEBUG
CONFIGURE_ARGS+=	--enable-debug
CPPFLAGS+=		-DDEBUG \
			-DLIBGTOP_ENABLE_DEBUG \
			-DLIBGTOP_FATAL_WARNINGS
.endif

.include <bsd.port.mk>
