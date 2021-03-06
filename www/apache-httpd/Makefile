# $OpenBSD: Makefile,v 1.74 2016/03/18 21:38:26 naddy Exp $

COMMENT-main=		apache HTTP server
COMMENT-common=		shared files for Apache 1 and 2

V=			2.4.18
DISTNAME=		httpd-${V}
PKGNAME=		apache-httpd-${V}

PKGNAME-main=		${PKGNAME}
FULLPKGNAME-common=	apache-httpd-common-${V}
FULLPKGPATH-common=	www/apache-httpd,-common
REVISION-main=		1

CATEGORIES=		www net

HOMEPAGE=		http://httpd.apache.org/

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB-main += ${WANTLIB}
WANTLIB-main += apr-1 aprutil-1 c crypto db expat lzma m
WANTLIB-main += pcre pthread ssl xml2 z

MASTER_SITES=		${MASTER_SITE_APACHE:=httpd/}

MODULES=		converters/libiconv

NO_TEST=		Yes

MULTI_PACKAGES=		-main -common

RUN_DEPENDS-main=	www/apache-httpd,-common

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			archivers/xz \
			devel/pcre \
			textproc/libxml \

WANTLIB-common=		#empty
LIB_DEPENDS-common=	# empty

HTTPD_DIR=		/var/www
CONFDIR=		${SYSCONFDIR}/apache2
FLAVOR_COMMA=		${FLAVOR_EXT:S/-/,/g}
SUBST_VARS=		CONFDIR FLAVOR_COMMA
PREFIX-common=		/var/www

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS=		--enable-layout=OpenBSD \
			--prefix=${HTTPD_DIR} \
			--exec-prefix=${LOCALBASE} \
			--sysconfdir=${CONFDIR} \
			--with-apr=${LOCALBASE}/bin/apr-1-config  \
			--with-apr-util=${LOCALBASE}/bin/apu-1-config \
			--enable-ssl --with-ssl=/usr \
			--enable-mpms-shared=all \
			--with-mpm=prefork \
			--with-program-name=httpd2 \
			--enable-modules=all \
			--enable-cache \
			--enable-disk-cache \
			--enable-proxy=shared \
			--enable-mods-shared=all \
			--enable-cgi \
			--enable-suexec \
			--with-suexec-caller=www \
			--with-suexec-bin=${TRUEPREFIX}/sbin/suexec2 \
			--with-suexec-logfile=${LOCALSTATEDIR}/log/suexec2_log \
			--with-pcre=${LOCALBASE}
# doesn't work correctly on OpenBSD yet
CONFIGURE_ARGS+=	--disable-http2

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			AWK=awk

FAKE_FLAGS=		rel_user=www rel_group=www \
			rel_datadir=${HTTPD_DIR} \
			datadir=${PREFIX}/share/examples/apache2 \
			sysconfdir=${PREFIX}/share/examples/apache2/conf

FLAVORS=		ldap
FLAVOR?=

.if ${FLAVOR:Mldap}
CONFIGURE_ARGS+=	--with-ldap --enable-ldap --enable-authnz-ldap
WANTLIB+=		lber-2.4 ldap-2.4 sasl2
LIB_DEPENDS-main+=	databases/openldap
LIB_DEPENDS-main+=	apr-util-*-ldap:devel/apr-util,ldap
.else
LIB_DEPENDS-main+=	apr-util-*-!ldap:devel/apr-util
.endif

A2BIN=			apxs logresolve dbmmanage htdigest htpasswd
A2SBIN=			apachectl rotatelogs suexec
A2MAN1=			dbmmanage apxs htdigest htpasswd logresolve
A2MAN8=			apachectl httpd rotatelogs suexec

pre-configure:
	sed -i 's,%%PREFIX%%,${PREFIX},' ${WRKSRC}/config.layout
	sed -i 's,%%CONFDIR%%,${CONFDIR},' ${WRKSRC}/config.layout \
		${WRKSRC}/configure
	sed -i 's,%%PREFIX%%,${PREFIX},g' ${WRKSRC}/support/apxs.in

post-install:
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share
	chown -R ${MANOWN}:${MANGRP} ${PREFIX}/man
	chown -R ${BINOWN}:${BINGRP} ${PREFIX}/bin
	chown -R ${BINOWN}:${BINGRP} ${PREFIX}/sbin
	chown -R ${LIBOWN}:${LIBGRP} ${PREFIX}/lib
	rmdir ${PREFIX}/share/examples/apache2/logs

	# -common
	${INSTALL_DATA_DIR} ${WRKINST}${PREFIX-common}/cgi-bin
	mv ${PREFIX}/share/examples/apache2/cgi-bin/{printenv,test-cgi} \
		${WRKINST}${PREFIX-common}/cgi-bin/
	mv ${PREFIX}/share/examples/apache2/icons \
		${WRKINST}${PREFIX-common}/

.for i in ${A2MAN1}
	mv ${PREFIX}/man/man1/${i}.1 ${PREFIX}/man/man1/${i}2.1
.endfor

.for i in ${A2MAN8}
	mv ${PREFIX}/man/man8/${i}.8 ${PREFIX}/man/man8/${i}2.8
.endfor

.for i in ${A2BIN}
	mv ${PREFIX}/bin/${i} ${PREFIX}/bin/${i}2
.endfor
	mv ${PREFIX}/bin/apxs2 ${PREFIX}/sbin # other ports expect it in sbin/

.for i in ${A2SBIN}
	mv ${PREFIX}/sbin/${i} ${PREFIX}/sbin/${i}2
.endfor

.if ${FLAVOR:Mldap}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ap2-mod_auth_ldap
.for i in mod_ldap.html mod_authnz_ldap.html.en \
	mod_authnz_ldap.html mod_ldap.html.en
	${INSTALL_DATA} ${WRKSRC}/docs/manual/mod/${i} \
		${PREFIX}/share/doc/ap2-mod_auth_ldap/
.endfor
.endif

.include <bsd.port.mk>
