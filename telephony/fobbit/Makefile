# $OpenBSD: Makefile,v 1.4 2015/07/19 00:02:24 jasper Exp $

COMMENT=	creative voip blaster driver/software
DISTNAME=	fobbit-0.61
REVISION=	0
CATEGORIES=	telephony
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fobbit/}

HOMEPAGE=	http://www.fobbit.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

NO_TEST=	Yes
USE_GMAKE=	Yes

WRKSRC=	${WRKDIST}/src

WANTLIB=c

pre-configure:
	@sed -i 's|_PREFIX_|${PREFIX}|g;' ${WRKSRC}/ini.c ${WRKSRC}/vb.ini

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fobbit
	${INSTALL_DATA_DIR} ${PREFIX}/share/fobbit/sounds
	${INSTALL_PROGRAM} ${WRKSRC}/vb ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/vb.ini ${PREFIX}/share/examples/fobbit
	${INSTALL_DATA} ${WRKDIST}/sounds/*.723 ${PREFIX}/share/fobbit/sounds

.include <bsd.port.mk>
