# $OpenBSD: Makefile,v 1.49 2016/03/22 12:59:44 ajacoutot Exp $

COMMENT=		GTK C code documentation system

GNOME_VERSION=		1.25
GNOME_PROJECT=		gtk-doc
REVISION=		0

CATEGORIES= 	   	textproc devel

HOMEPAGE=		http://www.gtk.org/gtk-doc/

# GPLv3 - GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python \
			x11/gnome

MODGNOME_TOOLS=		docbook yelp
MODPY_RUNDEP=		No

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS =	${WRKSRC}/build-aux
CONFIGURE_ARGS=		--with-highlight=source-highlight
CONFIGURE_ENV=		ac_cv_path_DBLATEX= \
			ac_cv_path_FOP=

# only files under tests/ are compiled but not installed
PKG_ARCH=		*

# glib2 needed to build regression tests
BUILD_DEPENDS=		devel/glib2 \
			textproc/openjade \
			textproc/source-highlight

RUN_DEPENDS=		textproc/docbook-xsl \
			textproc/openjade \
			textproc/source-highlight

.include <bsd.port.mk>
