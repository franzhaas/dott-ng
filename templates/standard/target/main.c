/*
 *   Copyright (c) 2019-2021 ams AG
 *
 *   Licensed under the Apache License, Version 2.0 (the "License");
 *   you may not use this file except in compliance with the License.
 *   You may obtain a copy of the License at
 *
 *       http://www.apache.org/licenses/LICENSE-2.0
 *
 *   Unless required by applicable law or agreed to in writing, software
 *   distributed under the License is distributed on an "AS IS" BASIS,
 *   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *   See the License for the specific language governing permissions and
 *   limitations under the License.
 */

/*
 Authors:
 - Thomas Winkler, ams AG, thomas.winkler@ams.com
*/

#include "stdint.h"
#include "stdbool.h"
#include "testhelpers.h"

volatile uint32_t global_data = 0x0;

int main(void)
{
	DOTT_test_hook();

	while(true) {
		global_data++;
		__asm("nop");
	}
	return 0;
}

// called by GCC runtime
void _init()
{
}

