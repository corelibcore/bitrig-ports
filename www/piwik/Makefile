# $OpenBSD: Makefile,v 1.76 2016/03/22 18:37:21 giovanni Exp $

COMMENT=		open source web analytics software program

DISTNAME=		piwik-2.16.0
CATEGORIES=		www

HOMEPAGE=		http://www.piwik.org/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://builds.piwik.org/

WRKDIST=		${WRKDIR}/piwik/

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

PREFIX=			${VARBASE}/www
INSTDIR=		${PREFIX}/piwik/
SUBST_VARS=		INSTDIR

MODULES=	lang/php \
		lang/python
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-gd \
		lang/php/${MODPHP_VERSION},-mysql \
		lang/php/${MODPHP_VERSION},-pdo_mysql

MODPY_ADJ_FILES=misc/log-analytics/import_logs.py
MODPY_RUNDEP=	No

post-patch:
	@find ${WRKSRC} -name "*.orig" -exec rm -f {} \;

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cd ${WRKSRC} && tar -cf - * | \
                tar -C ${INSTDIR} -xf -
	@chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
