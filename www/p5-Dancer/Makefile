# $OpenBSD: Makefile,v 1.11 2016/03/20 19:57:16 naddy Exp $

COMMENT =	simple perl web app framework

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Dancer-1.3202
CATEGORIES =	www

# perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS = 	devel/p5-Hash-Merge-Simple \
		devel/p5-Try-Tiny \
		devel/p5-Module-Runtime \
		mail/p5-MIME-Types \
		www/p5-HTTP-Body \
		www/p5-HTTP-Server-Simple-PSGI

TEST_DEPENDS +=	converters/p5-JSON \
	 	devel/p5-Clone \
		devel/p5-Test-Output \
		devel/p5-Test-NoWarnings \
		devel/p5-YAML \
		net/p5-Test-TCP \
		textproc/p5-Template \
	 	www/p5-Plack

.include <bsd.port.mk>
