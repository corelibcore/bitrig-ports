# $OpenBSD: Makefile,v 1.10 2016/03/04 10:11:22 kirby Exp $

COMMENT =		audit network device configuration

V =			0.12.0
DISTNAME =		nipper-cli-$V
PKGNAME =		nipper-$V
REVISION =		3
CATEGORIES =		security net

HOMEPAGE =		http://nipper.sf.net/

# GPLv3, but "cannot be used as part of a commercial product"
PERMIT_PACKAGE_CDROM =	No
PERMIT_PACKAGE_FTP =	Yes

EXTRACT_SUFX =		.tgz

WANTLIB =		c m nipper
WANTLIB +=		c++ c++abi pthread

LIB_DEPENDS=		security/libnipper

MODULES +=		devel/cmake

NO_TEST =		Yes

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
