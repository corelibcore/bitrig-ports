# $OpenBSD: Makefile,v 1.14 2016/02/21 16:17:26 jsg Exp $

BROKEN-arm=		__sync_lock_test_and_set_4 in zzuf_mutex_lock
BROKEN-hppa=		__sync_lock_test_and_set_4 in zzuf_mutex_lock

COMMENT=		transparent application input fuzzer

VERSION=		0.14
DISTNAME=		zzuf-${VERSION}
CATEGORIES=		misc security

MASTER_SITES=		https://github.com/samhocevar/zzuf/releases/download/v${VERSION}/

# WTFPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/.auto
# Necessary?
USE_GROFF=		Yes

.include <bsd.port.mk>
