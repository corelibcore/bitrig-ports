# $OpenBSD: Makefile,v 1.11 2016/03/16 08:13:21 ajacoutot Exp $

COMMENT=	rendering for complex writing systems

DISTNAME=	graphite2-1.3.7
EXTRACT_SUFX=	.tgz

SHARED_LIBS=	graphite2 1.1 # 3.0.1

CATEGORIES=	graphics

HOMEPAGE=	http://scripts.sil.org/cms/scripts/page.php?site_id=projects&item_id=graphite_home

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m
WANTLIB += c++ c++abi pthread

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=silgraphite/}

MODULES=	devel/cmake \
		lang/python

MODPY_BUILDDEP=	No
MODPY_RUNDEP=	No

TEST_DEPENDS=${MODPY_RUN_DEPENDS}

# XXX push upstream: collides with swap32(3)
pre-configure:
	sed -i 's,swap32,gr_swap32,g' ${WRKSRC}/tests/comparerenderer/FeatureParser.h

# regress tests need python
pre-test:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
