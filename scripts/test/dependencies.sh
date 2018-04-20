#!/usr/bin/env bash

################################################################################
# Copyright 2015-2018 Juan Irming
#
# This file is part of nvok.
#
# nvok is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# nvok is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with nvok.  If not, see <http://www.gnu.org/licenses/>.

printf "\nBash: "; bash --version | head -n 1
printf "\n.NET Core: "; dotnet --version
printf "\nGo: "; go version
printf "\nNode: "; node --version
printf "\nPerl: "; perl --version | head -n 2
printf "\nPHP: "; php --version | head -n 1
printf "\nPython: "; python --version
printf "\nRuby: "; ruby --version

