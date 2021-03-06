# $OpenBSD: Makefile,v 1.100 2016/01/06 10:15:12 sthen Exp $

COMMENT=	list information about open files

VERSION=	4.89
DISTNAME=	lsof_${VERSION}
PKGNAME=	${DISTNAME:S/_/-/}
CATEGORIES=	sysutils
MASTER_SITES=	http://www.mirrorservice.org/sites/lsof.itap.purdue.edu/pub/tools/unix/lsof/ \
		ftp://lsof.itap.purdue.edu/pub/tools/unix/lsof/ \
		ftp://lsof.itap.purdue.edu/pub/tools/unix/lsof/OLD/ \
		ftp://sunsite.ualberta.ca/pub/Mirror/lsof/ \
		ftp://sunsite.ualberta.ca/pub/Mirror/lsof/OLD/ \
		ftp://ftp.fu-berlin.de/pub/unix/tools/lsof/ \
		ftp://ftp.fu-berlin.de/pub/unix/tools/lsof/OLD/ \
		http://www.mirrorservice.org/sites/lsof.itap.purdue.edu/pub/tools/unix/lsof/OLD/

HOMEPAGE=	https://people.freebsd.org/~abe/

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c kvm>=13

MODULES=	perl

MODPERL_ADJ_FILES=	scripts/big_brother.perl5 \
			scripts/count_pf.perl \
			scripts/count_pf.perl5 \
			scripts/identd.perl5 \
			scripts/idrlogin.perl \
			scripts/idrlogin.perl5 \
			scripts/list_NULf.perl5 \
			scripts/list_fields.perl \
			scripts/shared.perl5 \
			scripts/watch_a_file.perl

MAKE_FLAGS=	DEBUG="${CFLAGS}"

CONFIGURE_STYLE= simple
CONFIGURE_SCRIPT= Configure
CONFIGURE_ARGS=	-n openbsd
CONFIGURE_ENV=	LSOF_CC="${CC}" OPENBSD_SYS="${BSDSRCDIR}/sys"

NO_TEST=	Yes

SRCBALL_NAME=	${DISTNAME}_src
WRKDIST=	${WRKDIR}/${DISTNAME}/${SRCBALL_NAME}

post-extract:
	cd ${WRKDIST}/.. ; grep MD5.*tar README.${DISTNAME} | \
		cksum -c - && tar -xf ${SRCBALL_NAME}.tar

# XXX: CVS keyword found in patch
pre-configure:
	@if ! [ -f ${BSDSRCDIR}/sys/Makefile ]; then echo; \
		echo "*** Building lsof requires kernel source in ${BSDSRCDIR}/sys"; \
		echo; exit 1; fi
	perl -pi -e 'print "#!/usr/bin/awk -f\n" if $$. == 1' \
		${WRKSRC}/scripts/list_fields.awk

do-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/share/lsof
	${INSTALL_PROGRAM} ${WRKBUILD}/lsof ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/lsof.8 ${PREFIX}/man/man8/lsof.8
	${INSTALL_SCRIPT} ${WRKSRC}/scripts/* ${PREFIX}/share/lsof
	@chmod ${SHAREMODE} ${PREFIX}/share/lsof/00*

.include <bsd.port.mk>
