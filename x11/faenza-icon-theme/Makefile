# $OpenBSD: Makefile,v 1.11 2015/03/27 08:16:16 ajacoutot Exp $

COMMENT =		complete, colourful suite of squared icons

V =			1.3
DISTNAME =		faenza-icon-theme_${V}
PKGNAME =		faenza-icon-theme-${V}
REVISION =		3
CATEGORIES =		x11

HOMEPAGE =		http://tiheum.deviantart.com/art/Faenza-Icons-173323228
MASTER_SITES =		https://faenza-icon-theme.googlecode.com/files/
EXTRACT_SUFX =		.zip

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

PKG_ARCH =		*
NO_BUILD =		Yes
NO_TEST =		Yes

RUN_DEPENDS =		x11/gtk+3,-guic

WRKDIST =		${WRKDIR}
ICONSDIR =		${PREFIX}/share/icons/

FAENZA_PACKAGES =	Faenza.tar.gz \
			Faenza-Ambiance.tar.gz \
			Faenza-Dark.tar.gz \
			Faenza-Darker.tar.gz \
			Faenza-Darkest.tar.gz \
			Faenza-Radiance.tar.gz

do-install:
	${INSTALL_DATA_DIR} ${ICONSDIR}

.for _targz in ${FAENZA_PACKAGES}
	cd ${WRKDIST} && tar -C ${ICONSDIR} -xzf ${_targz}
.endfor

post-install:
# Fix bogus permissions
	@chmod a-x ${ICONSDIR}/Faenz*/emblems/*/*.icon
	@chmod a-x ${ICONSDIR}/Faenz*/index.theme

.include <bsd.port.mk>
