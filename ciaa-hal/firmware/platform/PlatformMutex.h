
/** \addtogroup platform */
/** @{*/
/**
 * \defgroup platform_PlatformMutex PlatformMutex class
 * @{
 */
/* mbed Microcontroller Library
 * Copyright (c) 2006-2013 ARM Limited
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#ifndef PLATFORM_MUTEX_H
#define PLATFORM_MUTEX_H

#include "platform/NonCopyable.h"

#ifdef MBED_CONF_RTOS_PRESENT
#include "rtos/Mutex.h"
typedef rtos::Mutex PlatformMutex;
#else
/** A stub mutex for when an RTOS is not present
*/
class PlatformMutex : private sapi::NonCopyable<PlatformMutex> {
public:
    PlatformMutex()
    {
        // Stub

    }
    ~PlatformMutex()
    {
        // Stub
    }

    void lock()
    {
        // Do nothing
    }

    void unlock()
    {
        // Do nothing
    }
};

#endif

#endif

/**@}*/

/**@}*/
