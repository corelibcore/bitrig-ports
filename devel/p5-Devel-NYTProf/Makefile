# $OpenBSD: Makefile,v 1.29 2016/03/20 19:56:20 naddy Exp $

COMMENT =		powerful feature-rich perl source code profiler

DISTNAME =		Devel-NYTProf-6.02

CATEGORIES =		devel

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c perl z

MODULES =		cpan
RUN_DEPENDS =		converters/p5-JSON-MaybeXS \
			sysutils/p5-File-Which>=1.09
TEST_DEPENDS =		devel/p5-Sub-Name>=0.05 \
			devel/p5-Test-Differences>=0.60

.include <bsd.port.mk>
