# $OpenBSD: Makefile,v 1.7 2016/01/17 01:54:50 naddy Exp $

COMMENT=	SixXS automatic IPv6 connectivity client utility

VERSION=	20070115
DISTNAME=	aiccu_${VERSION}
PKGNAME=	aiccu-${VERSION}
REVISION=	1
CATEGORIES=	net
HOMEPAGE=	http://www.sixxs.net/tools/aiccu/

# custom
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://www.sixxs.net/archive/sixxs/aiccu/unix/

WANTLIB=	c pthread

WRKDIST=	${WRKDIR}/aiccu
USE_GMAKE=	Yes
MAKE_FLAGS=	CC='${CC}' RPM_OPT_FLAGS='${CFLAGS} ${DEFS}'
DEFS=		-DAICCU_CACHE=\"/var/db/aiccu.cache\" \
		-DAICCU_CONFIG=\"${SYSCONFDIR}/aiccu.conf\"

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/unix-console/aiccu ${PREFIX}/sbin/aiccu
	${INSTALL_MAN} ${WRKSRC}/doc/aiccu.1 ${PREFIX}/man/man8/aiccu.8
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/aiccu
	${INSTALL_DATA} ${WRKSRC}/doc/aiccu.conf ${PREFIX}/share/examples/aiccu

.include <bsd.port.mk>
