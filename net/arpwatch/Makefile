# $OpenBSD: Makefile,v 1.42 2016/03/11 11:27:52 sthen Exp $

COMMENT=	monitor arp & rarp requests

DISTNAME=	arpwatch-2.1a15
REVISION=	13
CATEGORIES=	net

MASTER_SITES=	ftp://ftp.ee.lbl.gov/

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c pcap

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--quiet
MAKE_FLAGS+=		ARPDIR=/var/arpwatch

# this provides an up-to-date pregenerated ethercodes.dat file
RUN_DEPENDS=	net/arp-scan,-mac

USE_GROFF=	Yes
NO_TEST=	Yes

EXAMPLESDIR=	${PREFIX}/share/examples/arpwatch

do-install:
	@sed -i 's,awk -f ,awk -f ${EXAMPLESDIR}/', ${WRKSRC}/massagevendor
	${INSTALL_PROGRAM} ${WRKSRC}/arpwatch ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKSRC}/arpsnmp ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/arpwatch.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/arpsnmp.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	@for i in ethercodes.dat *.awk; do \
		${INSTALL_DATA} ${WRKSRC}/$$i ${EXAMPLESDIR}; \
	done
	@${INSTALL_DATA} /dev/null ${EXAMPLESDIR}/arp.dat
	@${INSTALL_SCRIPT} ${WRKSRC}/arp2ethers ${EXAMPLESDIR}
	@${INSTALL_SCRIPT} ${WRKSRC}/massagevendor ${EXAMPLESDIR}

.include <bsd.port.mk>
