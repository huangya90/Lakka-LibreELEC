################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="debug"
PKG_VERSION=""
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://www.openelec.tv"
PKG_URL=""
PKG_DEPENDS_TARGET="toolchain gdb memtester"
PKG_SECTION="virtual"
PKG_SHORTDESC="debug: Metapackage for installing debugging tools"
PKG_LONGDESC="debug is a Metapackage for installing debugging tools"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

# configure GPU drivers and dependencies:
  get_graphicdrivers

if [ "$VDPAU_SUPPORT" = "yes" -a "$DISPLAYSERVER" = "x11" ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET vdpauinfo"
fi

if [ "$DEBUG" = "yes" -a "$VALGRIND" = "yes" ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET valgrind"
fi
