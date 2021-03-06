# $OpenBSD: Makefile,v 1.9 2016/03/18 16:06:48 naddy Exp $

COMMENT=	execute a command as another user

DISTNAME=	sudo-1.8.16
REVISION=	0
CATEGORIES=	security

# ISC-style license
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+=	c util z


HOMEPAGE=	https://www.sudo.ws/

MASTER_SITES=	https://www.sudo.ws/dist/ \
		ftp://plier.ucar.edu/pub/sudo/ \
		ftp://ftp.tux.org/pub/security/sudo/ \
		ftp://sunsite.ualberta.ca/pub/Mirror/sudo/

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-insults \
			--with-env-editor \
			--with-logfac=authpriv \
			--with-libtool=system \
			--disable-path-info \
			--enable-zlib=system

SHARED_LIBS=	sudo_util	0.0

FLAVORS=	gettext ldap
FLAVOR?=

.if ${FLAVOR:Mldap}
CONFIGURE_ARGS+=	--with-ldap=${LOCALBASE}
LIB_DEPENDS+=		databases/openldap
WANTLIB+=		crypto lber-2.4 ldap-2.4 sasl2 ssl
.endif
.if ${FLAVOR:Mgettext}
MODULES+=	devel/gettext
CONFIGURE_ARGS += --enable-nls=${LOCALBASE}
.else
CONFIGURE_ARGS += --disable-nls
.endif

# Don't set owner on install in fake mode
FAKE_FLAGS=	"INSTALL_OWNER="

EXAMPLEDIR=	${PREFIX}/share/examples/sudo

post-install:
	@mkdir -p ${EXAMPLEDIR}
	${INSTALL_DATA} ${FILESDIR}/sudoers ${EXAMPLEDIR}/sudoers.OpenBSD
	rm -rf ${WRKINST}/etc/sudoers* ${WRKINST}/var/db/sudo \
	       ${WRKINST}/var/run/sudo ${EXAMPLEDIR}/pam.conf

.include <bsd.port.mk>
