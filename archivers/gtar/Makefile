# $OpenBSD: Makefile,v 1.76 2015/03/14 20:52:46 naddy Exp $

COMMENT=	GNU version of the traditional tape archiver

DISTNAME=	tar-1.28
REVISION=	1
PKGNAME=	g${DISTNAME}
CATEGORIES=	archivers
HOMEPAGE=	https://www.gnu.org/software/tar/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=tar/}
EXTRACT_SUFX=	.tar.xz

# fake WANTLIB to ensure updates occur for major changes in base even for static
WANTLIB=	c

MODULES=	devel/gettext
# only force dependencies for compressors that have a single-letter option
RUN_DEPENDS=	archivers/bzip2 archivers/xz

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--program-prefix=g
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib ${LDSTATIC}" \
		DEFAULT_ARCHIVE=/dev/rst0 \
		DEFAULT_RMT_COMMAND=/etc/rmt
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

# supply result to skip a test that will abort configure if run as root
CONFIGURE_ENV+=	gl_cv_func_mknod_works=no

FLAVORS=	static
FLAVOR?=

.if ${FLAVOR:Mstatic}
LDSTATIC=	${STATIC}
MODULES=
BUILD_DEPENDS+=	devel/gettext
CONFIGURE_ENV+=	SHLIBEXT=""
.else
LDSTATIC=
.endif

# Test 87 is known to fail because getcwd(3) fails if the
# parent directory is unreadable.

# Tests 161 163 are known to fail because path resolution of ".."
# in a removed directory fails.

.include <bsd.port.mk>
