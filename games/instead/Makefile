# $OpenBSD: Makefile,v 1.3 2015/10/24 16:52:03 zhuk Exp $

COMMENT =		simple text adventure interpreter
V =			2.3.0
DISTNAME =		instead_${V}
PKGNAME =		${DISTNAME:C/_/-/}
CATEGORIES =		games devel/lua
HOMEPAGE =		http://instead.sourceforge.net

# MIT, LGPL (SDL_anigif), zlib (SDL_gfx), 3-clause BSDL (tinymt32)
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL SDL_image SDL_mixer SDL_ttf atk-1.0 c cairo gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangoxft-1.0 pthread z
WANTLIB += ${MODLUA_WANTLIB}

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=instead/} \
			http://ifhub.ru/instead/${V}/

MODULES	=		devel/cmake converters/libiconv lang/lua
RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		devel/sdl-mixer \
			devel/sdl-ttf \
			devel/sdl-image \
			x11/gtk+2

CONFIGURE_ARGS =	-DMANDIR=man

NO_TEST =		Yes
WRKDIST =		${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
