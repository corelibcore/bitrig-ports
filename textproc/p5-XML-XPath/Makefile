# $OpenBSD: Makefile,v 1.34 2016/03/20 19:57:12 naddy Exp $

COMMENT =	modules for parsing and evaluating XPath statements

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	XML-XPath-1.29
CATEGORIES =	textproc

RUN_DEPENDS =	textproc/p5-XML-Parser>=2.23

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODCPAN_EXAMPLES =	Yes

TEST_DEPENDS =		devel/p5-Path-Tiny

.include <bsd.port.mk>
