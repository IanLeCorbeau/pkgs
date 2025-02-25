EAPI=8

DESCRIPTION="Port of OpenBSD's ksh(1)"
HOMEPAGE="https://github.com/RagnarokOS/oksh/"
SRC_URI="https://github.com/RagnarokOS/oksh/releases/download/${PVR}/${PF}.tgz"

LICENSE="public-domain ISC"
SLOT="0"
KEYWORDS="amd64"

DEPEND="
	sys-libs/ncurses
"
RDEPEND="
	${DEPEND}
	!app-shells/ksh
	!app-shells/loksh
"

pkg_postinst() {
	echo "/bin/ksh" >> /etc/shells
	echo "/usr/bin/ksh" >> /etc/shells
	elog "Added /bin/ksh and /usr/bin/ksh to /etc/shells..."
	elog "Don't forget to change your default shell using chsh."
}
