X-GM-THRID: 6208412714735239168
X-Received: by 10.140.151.198 with SMTP id 189mr12455652qhx.11.1445519280497;
        Thu, 22 Oct 2015 06:08:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.101.238 with SMTP id u101ls1746581qge.61.gmail; Thu, 22
 Oct 2015 06:07:59 -0700 (PDT)
X-Received: by 10.129.57.197 with SMTP id g188mr12553168ywa.18.1445519279800;
        Thu, 22 Oct 2015 06:07:59 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id fa8si1694351pab.1.2015.10.22.06.07.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 06:07:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id fv9so90600052pac.3
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 06:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=U90DLztC8z+b2t0GCg9Ob2OonsO/y7hvkxk9fTWBu1E=;
        b=uQNAZs8eXSlr677JltW66cFHe/SMjAgQumd9f0CPksyCf1gqdFNZwtl1OCy8FTM64E
         xtgSM37dNVKDJZKrgJpI5sJpgP52GBd+YFmXKLVHeWhpIxJKn+FfTbSt/ZnpQ39lBywL
         nO3omxtWh4Xqjs03mMVrTtBH76X1cgcaia+0DUbNQGqNxD/f7ThDdyLdDcZIpmAGHSYu
         YC6/mjGpqxuQV1Y+W/dTi5YU5NNLLHkt+RJ6UIdLdkPvi0aYrJBGd4IUZ0jHkDbzoGuc
         G9bKTpC2XR5Pf61IwSWa2M1UpldAKjyatf/L+aVVn2d5vtu+mlLlZULrtt32gdljIK80
         yHTQ==
X-Received: by 10.68.180.131 with SMTP id do3mr17461539pbc.133.1445519279589;
        Thu, 22 Oct 2015 06:07:59 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id y7sm13975564par.31.2015.10.22.06.07.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 06:07:58 -0700 (PDT)
Date: Thu, 22 Oct 2015 18:37:51 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] Staging: wilc1000: coreconfigurator: Drop unneeded
 wrapper functions
Message-ID: <20151022130751.GA21370@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Replace the wrapper functions get_address1(), get_address2() and get_address3()
with the standard kernel function ether_addr_copy().
Semantic patch used to identify the issue:

@@
identifier f,g;
@@

*f(...) {
 g(...); }

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/wilc1000/coreconfigurator.c | 48 ++++++++++++++---------------
 1 file changed, 23 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.c b/drivers/staging/wilc1000/coreconfigurator.c
index 427adfd..6dfe26d 100644
--- a/drivers/staging/wilc1000/coreconfigurator.c
+++ b/drivers/staging/wilc1000/coreconfigurator.c
@@ -13,8 +13,12 @@
 #include "wilc_wlan.h"
 #include <linux/errno.h>
 #include <linux/slab.h>
+#include <linux/etherdevice.h>
 #define TAG_PARAM_OFFSET	(MAC_HDR_LEN + TIME_STAMP_LEN + \
 							BEACON_INTERVAL_LEN + CAP_INFO_LEN)
+#define ADDR1 4
+#define ADDR2 10
+#define ADDR3 16
 
 /* Basic Frame Type Codes (2-bit) */
 enum basic_frame_type {
@@ -171,38 +175,32 @@ static inline u8 get_from_ds(u8 *header)
 	return ((header[1] & 0x02) >> 1);
 }
 
-/* This function extracts the MAC Address in 'address1' field of the MAC     */
-/* header and updates the MAC Address in the allocated 'addr' variable.      */
-static inline void get_address1(u8 *pu8msa, u8 *addr)
-{
-	memcpy(addr, pu8msa + 4, 6);
-}
-
-/* This function extracts the MAC Address in 'address2' field of the MAC     */
-/* header and updates the MAC Address in the allocated 'addr' variable.      */
-static inline void get_address2(u8 *pu8msa, u8 *addr)
-{
-	memcpy(addr, pu8msa + 10, 6);
-}
-
-/* This function extracts the MAC Address in 'address3' field of the MAC     */
-/* header and updates the MAC Address in the allocated 'addr' variable.      */
-static inline void get_address3(u8 *pu8msa, u8 *addr)
-{
-	memcpy(addr, pu8msa + 16, 6);
-}
-
 /* This function extracts the BSSID from the incoming WLAN packet based on   */
-/* the 'from ds' bit, and updates the MAC Address in the allocated 'addr'    */
+/* the 'from ds' bit, and updates the MAC Address in the allocated 'data'    */
 /* variable.                                                                 */
 static inline void get_BSSID(u8 *data, u8 *bssid)
 {
 	if (get_from_ds(data) == 1)
-		get_address2(data, bssid);
+		/*
+		 * Extract the MAC Address in 'address2' field of the MAC
+		 * header and update the MAC Address in the allocated 'data'
+		 *  variable.
+		 */
+		ether_addr_copy(data, bssid + ADDR2);
 	else if (get_to_ds(data) == 1)
-		get_address1(data, bssid);
+		/*
+		 * Extract the MAC Address in 'address1' field of the MAC
+		 * header and update the MAC Address in the allocated 'data'
+		 * variable.
+		 */
+		ether_addr_copy(data, bssid + ADDR1);
 	else
-		get_address3(data, bssid);
+		/*
+		 * Extract the MAC Address in 'address3' field of the MAC
+		 * header and update the MAC Address in the allocated 'data'
+		 * variable.
+		 */
+		ether_addr_copy(data, bssid + ADDR3);
 }
 
 /* This function extracts the SSID from a beacon/probe response frame        */
-- 
2.1.0


