# $OpenBSD: Makefile,v 1.9 2016/02/18 01:25:58 tobiasu Exp $

BROKEN-sparc =		cc1plus: out of memory

# g++3 chokes on the code
NOT_FOR_ARCHS=	${GCC3_ARCHS}

COMMENT =		memory-efficient hash_map and hash_set C++ classes
DISTNAME =		sparsehash-2.0.2
CATEGORIES =		devel
HOMEPAGE =		https://github.com/geoffpike/sparsehash
REVISION =		4

# 3-clause BSDL
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://sparsehash.googlecode.com/files/

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

MODULES +=		gcc4
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c c++

FAKE_FLAGS =		docdir=${PREFIX}/share/doc/sparsehash

.include <bsd.port.mk>
