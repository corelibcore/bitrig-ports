# $OpenBSD: Makefile,v 1.22 2016/03/20 19:57:12 naddy Exp $

COMMENT=	perl module for parsing huge XML documents

DISTNAME=	XML-Twig-3.49
CATEGORIES=	textproc

HOMEPAGE=	http://www.xmltwig.com/xmltwig/

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
PKG_ARCH=	*
CPAN_AUTHOR=	MIROD

RUN_DEPENDS=	devel/p5-Tie-IxHash \
		textproc/p5-XML-Parser \
		textproc/p5-XML-XPathEngine \
		www/p5-libwww \
		www/p5-HTML-Parser \
		www/p5-HTML-Tidy \
		www/p5-HTML-Tree
BUILD_DEPENDS=	${RUN_DEPENDS}

TEST_DEPENDS=	converters/p5-Text-Iconv \
		converters/p5-Unicode-Map \
		converters/p5-Unicode-Map8 \
		converters/p5-Unicode-String \
		devel/p5-IO-CaptureOutput \
		devel/p5-IO-stringy \
		devel/p5-Test-Pod \
		textproc/p5-XML-SAX \
		textproc/p5-XML-Simple \
		textproc/p5-XML-XPath

.include <bsd.port.mk>
