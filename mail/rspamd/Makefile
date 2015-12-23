# $OpenBSD: Makefile,v 1.5 2015/11/16 12:12:11 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	event-driven spam filtering system in C/Lua

DISTNAME=	rspamd-1.0.10
EXTRACT_SUFX=	.tar.xz

CATEGORIES=	mail

HOMEPAGE=	https://rspamd.com/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto event gio-2.0 glib-2.0 gmime-2.6 gobject-2.0
WANTLIB += hiredis luajit-5.1 m pcre pthread sqlite3 ssl

MASTER_SITES=	https://rspamd.com/downloads/

MODULES=	devel/cmake \
		devel/gettext
LIB_DEPENDS=	databases/libhiredis \
		devel/glib2 \
		devel/pcre \
		lang/luajit \
		mail/gmime,-main

CONFIGURE_ARGS+=-DOPENBSD_BUILD=1 \
		-DCONFDIR="${SYSCONFDIR}/rspamd" \
		-DDBDIR="${LOCALSTATEDIR}/rspamd" \
		-DLOGDIR="${LOCALSTATEDIR}/log/rspamd" \
		-DMANDIR="${PREFIX}/man" \
		-DRUNDIR="${LOCALSTATEDIR}/run/rspamd" \
		-DRSPAMD_USER="_rspamd" \
		-DRSPAMD_GROUP="_rspamd"

# XXX Known problems:
# - tests currently need clang as an assembler due to use of AVX.
# - if aio test is run after dns test, it hangs:
# ${WRKBUILD}/test/rspamd-test -p /rspamd/aio -p /rspamd/dns     
TEST_TARGET=	run-test

pre-configure:
	${SUBST_CMD} ${WRKSRC}/interface/README.md

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rspamd
	mv ${WRKINST}${SYSCONFDIR}/rspamd/* ${PREFIX}/share/examples/rspamd

.include <bsd.port.mk>