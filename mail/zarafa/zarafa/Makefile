# $OpenBSD: Makefile,v 1.196 2016/03/11 20:28:27 naddy Exp $

COMMENT-main=	MS Exchange groupware suite replacement
COMMENT-web=	zarafa webaccess frontend and MAPI extensions for PHP

PKGNAME=	zarafa-${V}
PKGNAME-main=	zarafa-${V}
PKGNAME-web=	zarafa-webaccess-${V}
REVISION=	5

CATEGORIES=	mail www productivity

SHARED_LIBS +=  freebusy             2.0 # .0.0
SHARED_LIBS +=  mapi                 2.0 # .0.0
SHARED_LIBS +=  zarafasync           2.0 # .0.0
SHARED_LIBS +=  zarafacontacts       0.0 # .0.0
SHARED_LIBS +=  icalmapi             2.0 # .1.0
SHARED_LIBS +=  inetmapi             2.0 # .1.0
SHARED_LIBS +=  zarafa-archiver-core 0.0 # 0.0
SHARED_LIBS +=  zarafa-archiver      0.0 # 0.0
SHARED_LIBS +=  zarafa_server        0.0 # 0.0
SHARED_LIBS +=  zarafa_soapclient    0.0 # 0.0
SHARED_LIBS +=  zarafa_soapserver    0.0 # 0.0
SHARED_LIBS +=  zcp_common_mapi      0.0 # 0.0
SHARED_LIBS +=  zcp_common_service   0.0 # 0.0
SHARED_LIBS +=  zcp_common_ssl       0.0 # 0.0
SHARED_LIBS +=  zcp_common_util      0.0 # 0.0

MULTI_PACKAGES=	-main -web

MODULES=	devel/gettext \
		lang/python \
		lang/php

MODPHP_DO_SAMPLE=mapi
MESSAGE-main=	# empty
UNMESSAGE-main=	# empty

BUILD_DEPENDS=\
		devel/swig \
		textproc/xmlto \
		sysutils/coreutils

# libcurl is searched by configure but unused
BUILD_DEPENDS += net/curl

WANTLIB += ${MODGETTEXT_WANTLIB}
WANTLIB += m pthread z vmime execinfo icudata icui18n icuuc
WANTLIB += boost_filesystem-mt boost_system-mt lzma

WANTLIB-main += ${WANTLIB} ${MODPY_WANTLIB}
WANTLIB-main += c crypto ical icalss lber-2.4
WANTLIB-main += mysqlclient ncurses sasl2 ssl util xml2
WANTLIB-main += ldap_r-2.4 gsoapssl++
WANTLIB-main += ffi gmp gnutls hogweed nettle p11-kit c++ c++abi tasn1

RUN_DEPENDS-main=${MODGETTEXT_RUN_DEPENDS} \
		${MODPY_RUN_DEPENDS} \
		databases/xapian-bindings,-python \
		devel/libmagic \
		lang/python/2.7,-bsddb \
		textproc/catdoc
LIB_DEPENDS-main= ${MODGETTEXT_LIB_DEPENDS} \
		databases/mariadb \
		databases/openldap \
		devel/boost \
		devel/gsoap \
		devel/libexecinfo \
		devel/libvmime>=0.9.2p1 \
		textproc/icu4c \
		textproc/libical \
		textproc/libxml

WANTLIB-web += ${WANTLIB}
WANTLIB-web += freebusy ical icalmapi icalss inetmapi mapi
WANTLIB-web += xml2
WANTLIB-web += ffi gmp gnutls hogweed nettle p11-kit c++ c++abi tasn1
WANTLIB-web += zcp_common_mapi zcp_common_util

LIB_DEPENDS-web= ${BASE_PKGPATH}>=${V}
RUN_DEPENDS-web= ${MODPHP_RUN_DEPENDS} \
		${MODGETTEXT_RUN_DEPENDS}

USE_GMAKE=	Yes

#CC=		${CXX}
#CXX=		${CXX}

LIBTOOL_FLAGS=	--tag=disable-static

MODPY_ADJ_FILES=tools/python-scripts/optimize-imap.py \
		tools/python-scripts/update-resource-recipients \
		installer/linux/zarafa7-upgrade \
		ECtools/zarafa-utils/zarafa-mailbox-permissions \
		ECtools/zarafa-utils/zarafa-set-oof

WEBROOT=	${VARBASE}/www

PREFIX-web=	${WEBROOT}
INSTDIR=	${PREFIX-web}/zarafa-webaccess

SUBST_VARS=	INSTDIR PREFIX-web

MODGNU_CONFIG_GUESS_DIRS=${WRKDIST}/autoconf
CONFIGURE_STYLE=	gnu
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.69

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/zarafa \
			-std=c++11 -fpermissive" \
		LDFLAGS="-L${LOCALBASE}/lib -lexecinfo \
			-L${LOCALBASE}/lib/zarafa" \
		ZAFARA_LDFLAGS="-L${LOCALBASE}/lib/zarafa" \
		PHP_SYSCONF_DIR="${SYSCONFDIR}/php-${MODPHP_VERSION}" \
		ac_cv_lib_pam_pam_start=no
CONFIGURE_ARGS=	--disable-static \
		--with-gsoap-prefix=${LOCALBASE} \
		--with-mapi-configdir=${SYSCONFDIR}/mapi \
		--with-userscript-prefix=${SYSCONFDIR}/zarafa/userscripts \
		--with-quotatemplate-prefix=${SYSCONFDIR}/zarafa/quotamail \
		--with-searchscripts-prefix=${SYSCONFDIR}/zarafa/searchscripts \
		--with-mapi-timezonedir=${LOCALBASE}/share/zarafa/timezones \
		--enable-release \
		--enable-oss \
		--enable-unicode \
		--enable-python \
		--enable-icu \
		--with-distro=openbsd \
		--with-vmime-prefix=${LOCALBASE}/include \
		--with-ical-prefix=${LOCALBASE}/include \
		--with-clucene-lib-prefix=${LOCALBASE}/lib \
		--with-clucene-include-prefix=${LOCALBASE}/include \
		--with-python=${MODPY_BIN} \
		--with-php-config=${MODPHP_PHP_CONFIG}

# force build with clucene >= 2.x
CONFIGURE_ENV +=ac_cv_lib_clucene__ZN6lucene5index11IndexReader4openEPKc=yes
MAKE_FLAGS +=	CLUCENE_CFLAGS="$$(pkg-config --cflags libclucene-core)" \
		CLUCENE_LIBS="$$(pkg-config --libs libclucene-core)"

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples \
		USERSCRIPTDIR=${PREFIX}/share/examples/zarafa/userscripts \
		QUOTATEMPLATEDIR=${PREFIX}/share/examples/zarafa/quotamail \
		SEARCHSCRIPTSDIR=${PREFIX}/share/examples/zarafa/searchscripts \
		MAPICONFIGDIR=${PREFIX}/share/examples/zarafa/mapi

SUB_SCRIPTS=	createcompany.d/00createpublic groups_common.sh \
		createuser.d/00createstore companies_common.sh \
		users_common.sh

WRKDIST=	${WRKDIR}/zarafa-${V}/

post-patch:
	mv ${WRKSRC}/php-webclient-ajax/client/layout/img/login.jpg \
		${WRKSRC}/php-webclient-ajax/client/layout/img/login.jpg.dist
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
	ln -sf ${LOCALBASE}/bin/gcp ${WRKDIR}/bin/cp

pre-configure:
	cd ${WRKSRC}/installer/linux && \
		for i in *.cfg createuser.dotforward ; do \
			${SUBST_CMD} $$i; \
			perl -pi -e 's/\r\n/\n/;' $$i; done
	for i in ${SUB_SCRIPTS}; do \
		${SUBST_CMD} ${WRKSRC}/installer/userscripts/$$i; done
	${SUBST_CMD} ${WRKSRC}/php-ext/Makefile.in \
		${WRKSRC}/spooler/{DAgent,Spooler}.cpp
	perl -pi -e 's,/usr/share/zarafa,${PREFIX}/share/examples/zarafa,g;' \
		-e 's,/etc/zarafa,${SYSCONFDIR}/zarafa,g;' \
		-e 's,/usr/bin,${PREFIX}/bin,g;' \
		-e 's,/var/lib/zarafa,/var/db/zarafa,g;' \
		-e 's,ssl-certificate.sh,ssl-certificates.sh,g' \
		${WRKSRC}/doc/manual.xml
	perl -pi -e 's,/bin/bash,/bin/sh,g' \
		${WRKSRC}/installer/searchscripts/{attachments_parser,zmktemp}

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}${INSTDIR}
	${INSTALL_DATA_DIR} ${WRKINST}/${PREFIX-web}/include \
		${PREFIX}/share/examples/php-${MODPHP_VERSION}

	${SUBST_CMD} ${WRKBUILD}/php-webclient-ajax/config.php.dist
	find ${WRKBUILD}/php-webclient-ajax -name \*.orig -or -name \*.bak \
		-or -name \*.beforesubst | xargs rm
	cd ${WRKBUILD}/php-webclient-ajax && tar cf - ./ | \
		tar -xf - -C ${WRKINST}${INSTDIR}
	mv ${WRKINST}${INSTDIR}/debug.php \
		${WRKINST}${INSTDIR}/debug.php.disabled
	${INSTALL_DATA} /dev/null ${WRKINST}${INSTDIR}/debug.txt
	${SUBST_CMD} -m 0644 -c ${FILESDIR}/zarafa.conf \
		${WRKINST}/${INSTDIR}/zarafa.conf.dist
	find ${PREFIX}/share/php -type f \
		-exec perl -pi -e 's,\?php\?,\?php,' {} \;
	for i in ${WRKINST}${INSTDIR}/server/language/* ; do \
		msgfmt -f -v -o $$i/LC_MESSAGES/zarafa_webaccess.mo $$i/LC_MESSAGES/zarafa_webaccess.po ; \
		rm $$i/LC_MESSAGES/zarafa_webaccess.po ; \
	done

	${SUBST_CMD} -m 0644 -c ${FILESDIR}/zarafa.m4 ${PREFIX}/share/examples/zarafa/zarafa.m4
	${SUBST_CMD} -m 0644 -c ${FILESDIR}/local_zarafa.m4 ${PREFIX}/share/examples/zarafa/local_zarafa.m4

	# move files where we want them to be
	mv ${PREFIX}/share/doc/zarafa-gateway/* \
		${PREFIX}/share/doc/zarafa
	mv ${PREFIX}/share/doc/zarafa/example-config/* \
		${PREFIX}/share/examples/zarafa
	mv ${PREFIX}/share/doc/zarafa/zarafa.schema \
		${PREFIX}/share/examples/zarafa
	mv ${PREFIX}/share/examples/zarafa.ini \
		${PREFIX}/share/examples/zarafa
	mv ${PREFIX}/share/examples/zarafa/zarafa.ini \
		${PREFIX}/share/examples/php-${MODPHP_VERSION}/${MODPHP_DO_SAMPLE}.ini
	mv ${PREFIX}/share/php ${WRKINST}${PREFIX-web}/include/php
	rm ${PREFIX}/share/examples/cron.daily/zarafa-client-update
	rm ${PREFIX}/share/examples/zarafa/unix.cfg
	rm ${PREFIX}/share/doc/zarafa/ssl-certificates.sh
	rmdir ${PREFIX}/share/doc/{zarafa/example-config,zarafa-gateway}
	rm -rf ${PREFIX}/share/examples/{cron.daily,init.d,logrotate.d,sysconfig,zarafa/zarafa-gateway,zarafa/license}

	# part of zarafa-licensed, Zarafa Enterprise / Hosted editions
	# (i.e. commercial edition, linux bin only)
	cd ${PREFIX} && rm \
		man/man8/zarafa-licensed.8 \
		man/man5/zarafa-licensed.cfg.5 \
		man/man8/zarafa-restore.8 \
		man/man8/zarafa-backup.8 \
		man/man8/zarafa-msr-verify.8 \
		man/man8/zarafa-report.8 \
		man/man8/za-aclsync.8 \
		man/man8/zarafa-msr.8 \
		man/man5/zarafa-ldapms.cfg.5 \
		man/man5/zarafa-msr.cfg.5 \
		man/man5/zarafa-backup.cfg.5
	rmdir ${WRKINST}/var/lib/zarafa/{dagent,spooler}/plugins
	rmdir ${WRKINST}/var/lib/zarafa/{dagent,spooler}
	rmdir ${WRKINST}/var/lib/zarafa/report
	rmdir ${WRKINST}/var/lib/zarafa/
	rmdir ${WRKINST}/var/lib/

	perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g' \
		${PREFIX}/sbin/zarafa-search \
		${PREFIX}/sbin/zarafa-search-xapian-compact.py \
		${PREFIX}/lib/python${MODPY_VERSION}/site-packages/zarafa_search/__init__.py \
		${PREFIX}/lib/python${MODPY_VERSION}/site-packages/zarafa_search/plaintext.py \
		${PREFIX}/lib/python${MODPY_VERSION}/site-packages/zarafa/daemon/version/version_info.py

	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/zarafa-dagent/python \
		${PREFIX}/share/zarafa-spooler/python \
		${PREFIX}/lib/python${MODPY_VERSION}/site-packages

	chown -R ${SHAREOWN}:${SHAREGRP} ${WRKINST}${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/zarafa
	chown ${BINOWN}:${BINGRP} ${PREFIX}/share/examples/zarafa/zarafa.m4 \
		${PREFIX}/share/examples/zarafa/local_zarafa.m4
	chmod ${SHAREMODE} ${PREFIX}/share/examples/zarafa/zarafa.m4 \
		${PREFIX}/share/examples/zarafa/local_zarafa.m4

.include <bsd.port.mk>
