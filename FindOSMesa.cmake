# ┌─┐┬ ┬┬─┐┌─┐┬─┐┌─┐  ┌─┐┬─┐┌─┐┌┬┐┌─┐┬ ┬┌─┐┬─┐┬┌─
# ├─┤│ │├┬┘│ │├┬┘├─┤  ├┤ ├┬┘├─┤│││├┤ ││││ │├┬┘├┴┐
# ┴ ┴└─┘┴└─└─┘┴└─┴ ┴  └  ┴└─┴ ┴┴ ┴└─┘└┴┘└─┘┴└─┴ ┴
# A Powerful General Purpose Framework
# More information in: https://aurora-fw.github.io/
#
# Copyright (c) 2014 Brandon Schaefer <brandon.schaefer@canonical.com>
# Copyright (c) 2017 Aurora Framework, All rights reserved.
#
# This file is part of the Aurora Framework. This framework is free
# software; you can redistribute it and/or modify it under the terms of
# the GNU Lesser General Public License version 3 as published by the
# Free Software Foundation and appearing in the file LICENSE included in
# the packaging of this file. Please review the following information to
# ensure the GNU Lesser General Public License version 3 requirements
# will be met: https://www.gnu.org/licenses/lgpl-3.0.html.

# Try to find OSMesa on a Unix system
#
# This will define:
#
#   OSMESA_LIBRARIES   - Link these to use OSMesa
#   OSMESA_INCLUDE_DIR - Include directory for OSMesa

if(NOT WIN32)
	find_package(PkgConfig)
	pkg_check_modules(PKG_OSMESA QUIET osmesa)

	set(OSMESA_INCLUDE_DIR ${PKG_OSMESA_INCLUDE_DIRS})
	set(OSMESA_LIBRARIES ${PKG_OSMESA_LIBRARIES})
endif()
