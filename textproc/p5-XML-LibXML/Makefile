# $OpenBSD: Makefile,v 1.48 2016/03/20 19:57:11 naddy Exp $

COMMENT =		perl binding for libxml2

DISTNAME =		XML-LibXML-2.0124
EPOCH =			0

CATEGORIES =		textproc

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		m perl xml2 z

MODULES =		cpan converters/libiconv
RUN_DEPENDS =		textproc/p5-XML-NamespaceSupport>=1.07 \
			textproc/p5-XML-SAX>=0.11
LIB_DEPENDS =		textproc/libxml>=2.7.6
TEST_DEPENDS =		devel/p5-Test-LeakTrace

.include <bsd.port.mk>
