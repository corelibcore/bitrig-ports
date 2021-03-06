# $OpenBSD: Makefile,v 1.18 2016/03/05 16:04:06 pascal Exp $

COMMENT=	free H.265/HEVC encoder

VER=		1.9
DISTNAME=	x265_${VER}
PKGNAME=	x265-${VER}
CATEGORIES=	multimedia
MASTER_SITES=	https://ftp.videolan.org/pub/videolan/x265/
REVISION=	0

SHARED_LIBS=	x265	6.0

HOMEPAGE=	http://x265.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	c m pthread c++ c++abi

WRKSRC=		${WRKDIST}/source

MODULES=	devel/cmake

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	devel/yasm
.endif

SEPARATE_BUILD=	Yes
CONFIGURE_ARGS=	-DENABLE_TESTS=On

CONFIGURE_ARGS+= -DCMAKE_ASM_YASM_FLAGS_DEBUG="-g dwarf2"

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || \
    ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "mips64" || \
    ${MACHINE_ARCH} == "mips64el" || ${MACHINE_ARCH} == "powerpc" || \
    ${MACHINE_ARCH} == "sparc64"
CONFIGURE_ARGS+= -DNO_ATOMICS=Off
.else
CONFIGURE_ARGS+= -DNO_ATOMICS=On
.endif

do-test:
	${WRKBUILD}/test/TestBench

.include <bsd.port.mk>
