# $OpenBSD: Makefile,v 1.13 2016/01/10 15:43:51 jasper Exp $

COMMENT =	binary-based efficient object serialization library

DISTNAME =	msgpack-0.7.4
CATEGORIES =	net devel

HOMEPAGE =	http://msgpack.org/

# Apache2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem ext

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}

MODRUBY_TEST =		rspec3

.include <bsd.port.mk>
