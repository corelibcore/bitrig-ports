# $OpenBSD: Makefile,v 1.9 2015/10/08 12:02:03 jasper Exp $

# no libGL (toolchain issue)
NOT_FOR_ARCHS=	m88k

COMMENT=	cairo bindings for Python

VERSION=	1.10.0
DISTNAME=	pycairo-${VERSION}
PKGNAME=	py3-cairo-${VERSION}
EXTRACT_SUFX=	.tar.bz2
REVISION=	2

CATEGORIES=	graphics

HOMEPAGE=	http://cairographics.org/pycairo/

# LGPLv2.1 / MPL 1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += GL X11 Xau Xdamage Xdmcp Xext Xfixes Xrender Xxf86vm cairo
WANTLIB += drm expat fontconfig freetype glib-2.0 gobject-2.0 m pcre
WANTLIB += pixman-1 png pthread pthread-stubs util xcb xcb-render
WANTLIB += xcb-shm z

MASTER_SITES=	http://cairographics.org/releases/


MODULES=	lang/python \
		devel/gettext

MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}

LIB_DEPENDS=	${MODPY_LIB_DEPENDS} \
		graphics/cairo

TEST_DEPENDS=devel/py-test${MODPY_FLAVOR}

# du to the fact that waf extract embedded bzip2 tarball unpacked at runtime.
# we need to call waf to create files before patching files.
post-extract:
	cd ${WRKSRC} && ${MODPY_BIN} ./waf --help 1>&2 > /dev/null
	cd ${WRKSRC} && ln -s .waf3-* waf3

do-configure:
	cd ${WRKSRC} && env PYTHON=${MODPY_BIN} \
		LDFLAGS="$$(python${MODPY_VERSION}-config --libs)" \
		${MODPY_BIN} ./waf configure

do-build:
	cd ${WRKBUILD} && ${MODPY_BIN} ./waf build

do-install:
	cd ${WRKBUILD} && ${MODPY_BIN} ./waf install

do-test: install
	sed -i "s/python/python${MODPY_VERSION}/g" ${WRKSRC}/test/examples_test.py
	cd ${WRKSRC}/test && py.test${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
