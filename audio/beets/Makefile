# $OpenBSD: Makefile,v 1.16 2016/02/25 00:44:34 sthen Exp $

COMMENT =	CLI tools to manage music collections

MODPY_EGG_VERSION = 1.3.17
DISTNAME =	beets-${MODPY_EGG_VERSION}
CATEGORIES =	audio

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE =	http://beets.io/

# MIT
PERMIT_PACKAGE_CDROM =  Yes

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes
MODPY_PI =	Yes
NO_TEST =	Yes
USE_GROFF =	Yes

RUN_DEPENDS =	audio/py-discogs-client>=2.0.2 \
		audio/py-musicbrainzngs \
		audio/py-last \
		audio/py-mutagen \
		devel/py-algorithm-munkres \
		devel/py-enum34>=1.0.4 \
		textproc/py-jellyfish \
		textproc/py-unidecode \
		textproc/py-yaml \
		www/py-requests

post-install:
	${INSTALL_MAN} ${WRKSRC}/man/beet.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/man/beetsconfig.5 ${PREFIX}/man/man5

.include <bsd.port.mk>
