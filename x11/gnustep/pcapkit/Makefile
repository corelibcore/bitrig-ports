# $OpenBSD: Makefile,v 1.7 2016/03/05 16:04:09 pascal Exp $

COMMENT =	GNUstep wrapper around libpcap

V =		0.2
REVISION =	3
DISTNAME =	PcapKit-${V}
PKGNAME =	gnustep-pcapkit-${V}
CATEGORIES =	net

SHARED_LIBS =	PcapKit 0.0

HOMEPAGE =	http://gna.org/projects/gnustep-nonfsf
MASTER_SITES =	http://download.gna.org/gnustep-nonfsf/

MODULES =	x11/gnustep
WANTLIB =	pthread pcap
MODGNUSTEP_IS_FRAMEWORK = Yes

MAKE_ENV +=	PcapKit_INTERFACE_VERSION=${LIBPcapKit_VERSION}

.include <bsd.port.mk>
