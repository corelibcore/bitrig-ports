# $OpenBSD: Makefile.inc,v 1.15 2016/03/06 20:27:24 bentley Exp $

CATEGORIES +=	www

# child ports MUST define NETSURF_{PROJECT,VERSION}

PKGNAME ?=	${NETSURF_PROJECT}-${NETSURF_VERSION}
DISTNAME ?=	${NETSURF_PROJECT}-${NETSURF_VERSION}-src

HOMEPAGE ?=	http://www.netsurf-browser.org/projects/${NETSURF_PROJECT}/
MASTER_SITES ?=	http://download.netsurf-browser.org/libs/releases/

WRKDIST ?=	${WRKDIR}/${DISTNAME:S/-src//}

# MIT for libs / GPLv2 for netsurf
PERMIT_PACKAGE_CDROM=	Yes

DESTDIRNAME =	${DESTDIR}

TEST_TARGET =test
USE_GMAKE =	Yes

# not used for browser
.for _l _v in ${SHARED_LIBS}
MAKE_FLAGS +=	COMPONENT_TYPE=lib-shared \
		NS_LIB_VERSION=${_v}
.endfor

.if ${NETSURF_PROJECT} != "buildsystem"
BUILD_DEPENDS +=	www/netsurf/buildsystem>=1.5
MAKE_FLAGS +=		Q= \
			VQ= \
			CCOPT= \
			CXXOPT= \
			CCACHE= \
			FLEX=flex \
			NSSHARED=${LOCALBASE}/share/netsurf-buildsystem
.endif
