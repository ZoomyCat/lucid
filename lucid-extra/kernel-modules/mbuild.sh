#!/bin/bash
set -x
# switch to basic language
export LANG=C
export LC_MESSAGES=C

BRANCH=${1:-unstable}	# Allows specifying command line agrument for branch, defaulting to unstable
ARCH=${2:-$(uname -m)}	# Allows specifying command line agrument for arch, defaulting to system's arch
IS_EXTRA_EUDEV=${3:-0}  # since upower-0.9.23 is deprecated in upstream, it isn't expected to change

if [[ -f ./mbuild.conf ]];then
	. "./mbuild.conf"
else
	CHROOT=/opt/manjarobuild
fi

# do UID checking here so someone can at least get usage instructions
if [ "$EUID" != "0" ]; then
    echo "error: This script must be run as root."
    exit 1
fi

echo "==> Start building"
date

user=$(ls ${CHROOT}/${BRANCH}-${ARCH} | cut -d' ' -f1 | grep -v root | grep -v lock)

${BRANCH}-${ARCH}-build -c -r ${CHROOT}
cd extra

for pkg in $(cat build-list); do cd $pkg && makechrootpkg -n -r ${CHROOT}/${BRANCH}-${ARCH} || break && cd ..; done
date

echo "==> Done building"

echo "==> Start building openrc"

#shutdown -h now
