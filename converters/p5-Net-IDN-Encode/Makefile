# $OpenBSD: Makefile,v 1.15 2016/03/20 19:56:08 naddy Exp $

COMMENT=		Internationalizing Domain Names in Applications

DISTNAME=		Net-IDN-Encode-2.300
CATEGORIES=		net converters

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB=		perl

MODULES=		cpan

CPAN_AUTHOR=		CFAERBER

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		converters/p5-Net-IDN-Nameprep
TEST_DEPENDS=		devel/p5-Test-NoWarnings \
			devel/p5-Test-Pod-Coverage \
			devel/p5-Test-Pod

.include <bsd.port.mk>
