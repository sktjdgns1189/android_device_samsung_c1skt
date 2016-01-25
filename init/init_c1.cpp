/*
   Copyright (c) 2015, The Dokdo-Project. All rights reserved.

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of The Linux Foundation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

   THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
   ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
   BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
   IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <stdlib.h>

#include "vendor_init.h"
#include "property_service.h"
#include "log.h"
#include "util.h"

#include "init_sec.h"

void init_sec_properties()
{
    char platform[PROP_VALUE_MAX];
    char bootloader[PROP_VALUE_MAX];
    char device[PROP_VALUE_MAX];
    char devicename[PROP_VALUE_MAX];

    property_get("ro.bootloader", bootloader);

    if (strstr(bootloader, "E210K")) {
        /* c1ktt */
        property_set("ro.build.fingerprint", "samsung/c1ktt/c1ktt:4.4.4/KTU84P/E210KKTUKOB1:user/release-keys");
        property_set("ro.build.description", "c1ktt-user 4.4.4 KTU84P E210KKTUKOB1 release-keys");
        property_set("ro.product.model", "SHV-E210K");
        property_set("ro.product.device", "c1ktt");
    } else if (strstr(bootloader, "E210L")) {
        /* c1lgt */
        property_set("ro.build.fingerprint", "samsung/c1lgt/c1lgt:4.4.4/KTU84P/E210LKLUKOB1:user/release-keys");
        property_set("ro.build.description", "c1lgt-user 4.4.4 KTU84P E210LKLUKOB1 release-keys");
        property_set("ro.product.model", "SHV-E210L");
        property_set("ro.product.device", "c1lgt");
    } else {
        /* c1skt */
        property_set("ro.build.fingerprint", "samsung/c1skt/c1skt:4.4.4/KTU84P/E210SKSUKNI3:user/release-keys");
        property_set("ro.build.description", "c1skt-user 4.4.4 KTU84P E210SKSUKNI3 release-keys");
        property_set("ro.product.model", "SHV-E210S");
        property_set("ro.product.device", "c1skt");
    }

    property_get("ro.product.device", device);
    strlcpy(devicename, device, sizeof(devicename));
    ERROR("Found bootloader id %s setting build properties for %s device\n", bootloader, devicename);
}
