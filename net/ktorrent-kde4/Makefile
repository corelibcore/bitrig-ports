# $OpenBSD: Makefile,v 1.8 2015/08/12 12:27:03 zhuk Exp $

CATEGORIES =	net
COMMENT =	torrent client for KDE 4
V =		4.3.1
DISTNAME =	ktorrent-$V
HOMEPAGE =	http://ktorrent.pwsp.net/
REVISION =	4

EXTRACT_SUFX =	.tar.bz2

SHARED_LIBS =	ktcore		0.0

WANTLIB =  c m pthread
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtScript lib/qt4/QtSql
WANTLIB += lib/qt4/QtSvg lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kcmutils ${KDE4LIB}/kdeui ${KDE4LIB}/kdewebkit
WANTLIB += ${KDE4LIB}/kdnssd ${KDE4LIB}/kemoticons ${KDE4LIB}/kidletime
WANTLIB += ${KDE4LIB}/kio ${KDE4LIB}/knotifyconfig ${KDE4LIB}/kparts
WANTLIB += ${KDE4LIB}/kprintutils ${KDE4LIB}/krosscore ${KDE4LIB}/ktorrent
WANTLIB += ${KDE4LIB}/kutils ${KDE4LIB}/kworkspace ${KDE4LIB}/nepomuk
WANTLIB += ${KDE4LIB}/nepomukutils ${KDE4LIB}/plasma ${KDE4LIB}/solid
WANTLIB += soprano syndication tag

MASTER_SITES =	${HOMEPAGE}downloads/$V/

# GPLv2+
PERMIT_PACKAGE_CDROM =          Yes

MODULES =		devel/gettext x11/kde4 multimedia/phonon
MODKDE4_USE =		pim workspace

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS =	audio/taglib \
		STEM->=${V:C/^./1/}:net/libktorrent

.include <bsd.port.mk>
