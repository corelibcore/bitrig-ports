# $OpenBSD: Makefile,v 1.4 2016/03/11 20:28:23 naddy Exp $

COMMENT=	GNU gettext development and translation tools

VERSION=	0.19.7
DISTNAME=	gettext-${VERSION}
PKGNAME=	gettext-tools-${VERSION}
SHARED_LIBS +=  gettextlib           7.0      # unknown
SHARED_LIBS +=  gettextsrc           6.0      # unknown
SHARED_LIBS +=  gettextpo            8.0      # 5.3

CATEGORIES=	devel
# DPB: parallel-safe, not worth it. Too much time in configure

MASTER_SITES=	${MASTER_SITE_GNU:=gettext/}
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	https://www.gnu.org/software/gettext/

# LGPLv2.1, GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/gettext
MODGETTEXT_TOOLS=No

WANTLIB=	c m ncurses

# required by the autopoint tool
RUN_DEPENDS=	archivers/xz

WRKSRC=		${WRKDIST}/gettext-tools
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-csharp \
		--disable-java \
		--with-libiconv-prefix="${LOCALBASE}" \
		--with-libintl-prefix="${LOCALBASE}" \
		--with-included-glib \
		--with-included-libcroco \
		--with-included-libunistring \
		--with-included-libxml \
		--without-emacs \
		--without-git

CONFIGURE_ENV +=	gl_cv_have_weak=yes

MODGNU_CONFIG_GUESS_DIRS=${WRKDIST}/build-aux

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp
	for f in start-po.el po-mode.el po-compat.el; do \
		${INSTALL_DATA} ${WRKSRC}/misc/$$f \
			${PREFIX}/share/emacs/site-lisp; \
	done

.include <bsd.port.mk>
