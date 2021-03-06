# $OpenBSD: Makefile,v 1.65 2016/01/17 17:29:09 sthen Exp $

COMMENT=	image viewer for KDE

DISTNAME=	gwenview-1.4.2
PKGSPEC=	gwenview-<4
REVISION =	20

SHARED_LIBS +=	gwenviewcore         5.0      # .1.0
CATEGORIES=	graphics x11 x11/kde
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gwenview/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://gwenview.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  ICE SM X11 Xcursor Xdamage Xext Xfixes
WANTLIB += Xrender Xt Xxf86vm art_lgpl_2 c drm expat exiv2
WANTLIB += fam fontconfig freetype idn jpeg m mng png pthread
WANTLIB += pthread-stubs c++ c++abi util xcb z
WANTLIB += X11-xcb glapi xcb-dri2 xcb-glx
WANTLIB += ${KDE}/kdecore>=6 ${KDE}/DCOP ${KDE}/kdefx ${KDE}/kdeprint
WANTLIB += ${KDE}/kdesu ${KDE}/kparts ${KDE}/kdeui ${KDE}/kio
WANTLIB += ${KDE}/kmediaplayer ${KDE}/kutils ${KDE}/kwalletclient
WANTLIB += ${KDE}/kipi
WANTLIB += c++ c++abi

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS=	x11/kde/libs3 \
		graphics/libkipi \
		graphics/exiv2

MODULES=	x11/kde devel/gettext
MODKDE_VERSION= 3.5.7

PORTHOME=	${WRKDIR}

MAKE_ENV=	KDEDIR="${LOCALBASE}"
MAKE_FLAGS=	${MODKDE_MAKE_FLAGS}

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION=	2.61
AUTOCONF?=		/bin/sh ${WRKDIST}/admin/cvs.sh configure
MODGNU_CONFIG_GUESS_DIRS= ${MODKDE_CONFIG_GUESS_DIRS}
CONFIGURE_ARGS=	${MODKDE_CONFIGURE_ARGS}
CONFIGURE_ARGS+= --enable-kipi
CONFIGURE_ENV=	${MODKDE_CONFIGURE_ENV}

# picks up KDE4 libraries otherwise
USE_LIBTOOL=	gnu

.include <bsd.port.mk>
