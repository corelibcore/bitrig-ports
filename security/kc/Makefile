# $OpenBSD: Makefile,v 1.14 2015/12/29 19:49:41 jasper Exp $

COMMENT =	console based password storing application

GH_ACCOUNT =	levaidaniel
GH_PROJECT =	kc
GH_TAGNAME =	2.3.2
REVISION =	2

CATEGORIES =	security

HOMEPAGE =	http://github.com/levaidaniel/${GH_PROJECT}

# BSD
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += c crypto edit ncursesw pcre pthread xml2

LIB_DEPENDS =	textproc/libxml \
		devel/pcre

MAKE_ENV +=	HAVE_PCRE=yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/kc
	${INSTALL} ${WRKBUILD}/pwsafe_to_kc.pl ${PREFIX}/share/kc/

.include <bsd.port.mk>
