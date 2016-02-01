# $OpenBSD: php.port.mk,v 1.14 2016/02/01 21:53:06 sthen Exp $

SHARED_ONLY=		Yes

CATEGORIES+=		lang/php

MODPHP_VERSION?=	5.6
.if ${MODPHP_VERSION} == 5.3
MODPHP_VSPEC = >=${MODPHP_VERSION},<5.4
.elif ${MODPHP_VERSION} == 5.4
MODPHP_VSPEC = >=${MODPHP_VERSION},<5.5
.elif ${MODPHP_VERSION} == 5.5
MODPHP_VSPEC = >=${MODPHP_VERSION},<5.6
.elif ${MODPHP_VERSION} == 5.6
MODPHP_VSPEC = >=${MODPHP_VERSION},<5.7
.endif
MODPHPSPEC = php-${MODPHP_VSPEC}

MODPHP_RUN_DEPENDS=	${MODPHPSPEC}:lang/php/${MODPHP_VERSION}
MODPHP_LIB_DEPENDS=	${MODPHPSPEC}:lang/php/${MODPHP_VERSION}
MODPHP_WANTLIB =	php${MODPHP_VERSION}
_MODPHP_BUILD_DEPENDS=	${MODPHPSPEC}:lang/php/${MODPHP_VERSION}

MODPHP_BUILDDEP?=	Yes
MODPHP_RUNDEP?=		Yes

.if ${NO_BUILD:L} == "no" && ${MODPHP_BUILDDEP:L} == "yes"
BUILD_DEPENDS+=		${_MODPHP_BUILD_DEPENDS}
.endif
.if ${MODPHP_RUNDEP:L} == "yes"
RUN_DEPENDS+=		${MODPHP_RUN_DEPENDS}
.endif

MODPHP_BIN=		${LOCALBASE}/bin/php-${MODPHP_VERSION}
MODPHP_PHPIZE=		${LOCALBASE}/bin/phpize-${MODPHP_VERSION}
MODPHP_PHP_CONFIG=	${LOCALBASE}/bin/php-config-${MODPHP_VERSION}
MODPHP_INCDIR=		${LOCALBASE}/include/php-${MODPHP_VERSION}
MODPHP_LIBDIR=		${LOCALBASE}/lib/php-${MODPHP_VERSION}

MODPHP_CONFIGURE_ARGS=	--with-php-config=${LOCALBASE}/bin/php-config-${MODPHP_VERSION}
SUBST_VARS+=		MODPHP_VERSION

MODPHP_DO_PHPIZE?=
.if !empty(MODPHP_DO_PHPIZE)
AUTOCONF_VERSION=	2.62
AUTOMAKE_VERSION=	1.9

BUILD_DEPENDS+=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

.if empty(CONFIGURE_STYLE)
CONFIGURE_STYLE=	gnu
.endif

CONFIGURE_ENV+=		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
			AUTOCONF_VERSION=${AUTOCONF_VERSION}
CONFIGURE_ARGS+=	${MODPHP_CONFIGURE_ARGS}

pre-configure:
	cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} ${MODPHP_PHPIZE}
.endif

MODPHP_DO_SAMPLE?=
.if !empty(MODPHP_DO_SAMPLE)
PV=		${MODPHP_VERSION}
MODULE_NAME=	${MODPHP_DO_SAMPLE}
SUBST_VARS+=	PV MODULE_NAME
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/php-${MODPHP_VERSION}
	@echo "extension=${MODPHP_DO_SAMPLE}.so" > \
		${PREFIX}/share/examples/php-${MODPHP_VERSION}/${MODPHP_DO_SAMPLE}.ini
.endif
