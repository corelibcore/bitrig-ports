# $OpenBSD: Makefile,v 1.8 2016/03/20 19:57:14 naddy Exp $

COMMENT =	return a new component instance per request

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Catalyst-Component-InstancePerContext-0.001001
REVISION =	1
CATEGORIES =	www

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =		devel/p5-Moose \
			www/p5-Catalyst-Runtime

CONFIGURE_ARGS +=	--skipdeps

.include <bsd.port.mk>
