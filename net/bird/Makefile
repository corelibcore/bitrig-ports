# $OpenBSD: Makefile,v 1.42 2016/03/07 10:24:34 sthen Exp $

BROKEN= 	needs work on bitrig

COMMENT-main=	BIRD internet routing daemon
COMMENT-doc=	BIRD internet routing daemon (documentation)

V=		1.5.0
REVISION-main=	3
DISTNAME=	bird-$V
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		${DISTNAME:S/-/-doc-/}${EXTRACT_SUFX}

CATEGORIES=	net

HOMEPAGE=	http://bird.network.cz/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB-main=	c ncurses pthread readline

MULTI_PACKAGES=	-main -doc
FULLPKGNAME-doc= bird-doc-$V
FULLPKGPATH-doc= net/bird,-doc

# IPv6 support must be built with separate flags, however the filenames
# do not conflict, so the two packages may be installed together.
FLAVORS=	v6
FLAVOR?=
SUBST_VARS+=	SIX

.if ${FLAVOR:Mv6}
FULLPKGNAME-main= bird-v6-$V
FULLPKGPATH-main= net/bird,-main,v6
SIX=		6
.else
PKGNAME-main=	bird-$V
.endif

MASTER_SITES=	ftp://bird.network.cz/pub/bird/

BUILD_DEPENDS=	devel/m4 \
		devel/bison

FAKE_FLAGS=	sysconfdir=${TRUEPREFIX}/share/examples/bird

CC=	cc
CXX=	${CC}

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --enable-pthreads

.if ${FLAVOR:Mv6}
CONFIGURE_ARGS+= --enable-ipv6
.endif

MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/tools

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bird
	${INSTALL_DATA} ${WRKDIR}/bird-doc-$V/doc/* ${PREFIX}/share/doc/bird/
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${PREFIX}/share/doc/bird/

.include <bsd.port.mk>
