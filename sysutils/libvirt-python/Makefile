# $OpenBSD: Makefile,v 1.25 2016/03/20 16:12:26 naddy Exp $

COMMENT =		libvirt virtualization API python bindings

MODPY_EGG_VERSION =	1.3.2
DISTNAME =		libvirt-python-${MODPY_EGG_VERSION}

CATEGORIES =		sysutils

HOMEPAGE =		https://libvirt.org/python.html

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://libvirt.org/sources/python/ \
			ftp://libvirt.org/libvirt/python/

MODULES =		lang/python

WANTLIB =		pthread virt virt-lxc virt-qemu ${MODPY_WANTLIB}

LIB_DEPENDS =		sysutils/libvirt>=${MODPY_EGG_VERSION}

TEST_DEPENDS =		devel/py-nose \
			textproc/py-lxml \
			${BASE_PKGPATH}=${MODPY_EGG_VERSION}

do-test:
	sed -i 's,/usr/bin/nosetests,${LOCALBASE}/bin/nosetests,' \
		${WRKSRC}/setup.py
	@${MODPY_TEST_TARGET}

.include <bsd.port.mk>
