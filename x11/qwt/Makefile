# $OpenBSD: Makefile,v 1.18 2016/03/18 23:12:22 naddy Exp $

COMMENT =		Qt Widgets for Technical Applications
DISTNAME =		qwt-5.2.1
SHARED_LIBS =		qwt 6.0
CATEGORIES =		x11
EXTRACT_SUFX =		.tar.bz2
REVISION =		5

HOMEPAGE =		http://qwt.sourceforge.net/
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=qwt/}

# Qwt License, Version 1.0
# http://qwt.sourceforge.net/qwtlicense.html
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		x11/qt4
CONFIGURE_STYLE =	qmake
MODQMAKE_INSTALL_ROOT =
NO_TEST =		Yes
USE_GMAKE =		Yes

WANTLIB +=	ICE QtDesigner QtGui QtScript QtXml SM X11 Xext Xi
WANTLIB +=	Xinerama Xrender fontconfig freetype m pthread
WANTLIB +=	c++ c++abi

# svgmap example not included to prevent the need of svg dependencies
EXAMPLES =	bode realtime_plot cpuplot dials radio event_filter \
		data_plot sliders histogram spectrogram sysinfo \
		curvdemo1 curvdemo2 simple_plot

SUBST_VARS =	WRKINST EXAMPLES

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/qwtconfig.pri ${WRKSRC}/designer/designer.pro \
		${WRKSRC}/examples/examples.pri

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/man/man3/* ${PREFIX}/man/man3/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/qwt
	${SUBST_DATA} ${FILESDIR}/Makefile.examples \
		${PREFIX}/share/examples/qwt/Makefile
	${INSTALL_DATA} ${WRKSRC}/examples/examples.pri \
		${PREFIX}/share/examples/qwt/

.for i in ${EXAMPLES}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/qwt/${i}
	${INSTALL_DATA} ${WRKSRC}/examples/${i}/* \
		${PREFIX}/share/examples/qwt/${i}/
.endfor

.include <bsd.port.mk>
