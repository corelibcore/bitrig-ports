# $OpenBSD: Makefile,v 1.6 2015/09/29 10:52:12 sthen Exp $

COMMENT=		CIM operations over HTTP in Python

MODPY_EGG_VERSION=	0.8.0_dev
DISTNAME=		pywbem-0.8.0-dev.r728
WRKDIST=		${WRKDIR}/pywbem-0.8.0-dev
PKGNAME=		py-wbem-0.8.0pre728
EXTRACT_SUFX=		.zip
CATEGORIES=		devel
REVISION=		0

HOMEPAGE=		http://sourceforge.net/apps/mediawiki/pywbem/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=pywbem/}

MODULES=		lang/python
BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		security/py-M2Crypto

#MODPY_SETUPTOOLS=	Yes

.include <bsd.port.mk>
