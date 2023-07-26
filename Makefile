# Kary Pro Colors - A Color Theme for Code and Other Things
# Copyright (C) 2015-present Pouya Kary <kary@gnu.org>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

#
#	Make sure you have a .env file with the variable
#	"PRO_COLORS_TEST_PATH" set to the directory in which
# 	you wish to copy the build files into
#

include .env
export $(shell sed 's/=.*//' .env)

BUILD_FOLDER=pro-colors.themeX/builds/sublime

test: copy-to-test

copy-to-test: compile karyprocolors-dark.tmTheme karyprocolors-light.tmTheme

%.tmTheme:
	cp -f $(BUILD_FOLDER)/$*.tmTheme $(PRO_COLORS_TEST_PATH)/$*.tmTheme

compile:
	themex pro-colors.themeX