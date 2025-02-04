# vim: set tabstop=4 expandtab :
###############################################################################
#   Copyright (c) 2019-2021 ams AG
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
###############################################################################

# Authors:
# - Thomas Winkler, ams AG, thomas.winkler@ams.com

.PHONY=targets targets_clean

default: targets

clean: targets_clean

targets:
	make -C examples/01_component_testing/target
	make -C examples/02_system_testing/target
	make -C templates/standard/target

targets_clean:
	make -C examples/01_component_testing/target clean
	make -C examples/02_system_testing/target clean
	make -C templates/standard/target clean
