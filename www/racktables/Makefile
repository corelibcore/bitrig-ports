# $OpenBSD: Makefile,v 1.16 2016/03/16 00:38:39 sthen Exp $

COMMENT=	web-based rack/IP management

DISTNAME=	RackTables-0.20.11
PKGNAME=	${DISTNAME:L}
REVISION=	1
CATEGORIES=	www

HOMEPAGE=	http://www.racktables.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=racktables/}

MODULES=	lang/php

RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-gd \
		lang/php/${MODPHP_VERSION},-mysql \
		lang/php/${MODPHP_VERSION},-pdo_mysql \
		lang/php/${MODPHP_VERSION},-snmp \
		net/p5-Net-Telnet

USE_GMAKE=	Yes
NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www

FAKE_FLAGS=     DESTDIR=${WRKINST} prefix=${PREFIX} \
		datadir=/var/www \
		docdir=/var/www/racktables \
		scriptdir=/var/www/racktables \
		indexdir=/var/www/racktables/wwwroot \
		staticdir=/var/www/racktables/wwwroot \
		applibdir=/var/www/racktables/wwwroot/inc
INSTALL_TARGET=	install install-docs

post-install:
	cd ${WRKINST}/var/www; \
	${INSTALL_DATA_DIR} htdocs/racktables racktables/plugins; \
	echo "<?php require '../../racktables/wwwroot/index.php'; ?>" > htdocs/racktables/index.php; \
	chown -R ${SHAREOWN}:${SHAREGRP} racktables htdocs/racktables

.include <bsd.port.mk>
