# $OpenBSD: Makefile,v 1.19 2016/01/21 14:34:42 mestre Exp $

COMMENT =		code browsing program

DISTNAME =		cscope-15.8b
REVISION =		0
CATEGORIES =     	devel

HOMEPAGE =		http://cscope.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB =		c ncurses

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=cscope/}

CONFIGURE_STYLE =	gnu

post-install:
	@cd ${WRKSRC}; ${INSTALL_SCRIPT} contrib/xcscope/cscope-indexer \
		${PREFIX}/bin/cscope-indexer
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp
	@cd ${WRKSRC}; ${INSTALL_DATA} contrib/xcscope/xcscope.el \
		${PREFIX}/share/emacs/site-lisp

.include <bsd.port.mk>
