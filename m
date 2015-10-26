X-GM-THRID: 6208412714735239168
X-Received: by 10.182.215.226 with SMTP id ol2mr30892314obc.11.1445870800753;
        Mon, 26 Oct 2015 07:46:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.132.101 with SMTP id g98ls1981156iod.2.gmail; Mon, 26 Oct
 2015 07:46:40 -0700 (PDT)
X-Received: by 10.50.62.49 with SMTP id v17mr16206467igr.1.1445870800222;
        Mon, 26 Oct 2015 07:46:40 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id fa8si3563729pab.1.2015.10.26.07.46.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 07:46:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id hk11so190757545pad.1
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 07:46:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=8GD9ToG6gAuHe5IEp5DLcfQ0CGKdc2lZv+4Whxluay8=;
        b=yckZCYL4X83Lfo3XR+n5+MJuGxWyKF7W9o4ywDCMxpa1jzSJ9zWnaC8FY7GIhjHmDt
         DT4OjA9O7dECvP+B7O7VDpYfAMcSnLMC6ESHH5RAx5g15fwNuFtG7663DVVo/hO9kSxP
         yBySwVwDn6nrgW5Hhjncg3KOMqFaJZIKkyPR5lp06vQC9HWRvy46VieuQ88IQvXx0SEM
         gyDYGa20l65R1yhtE5CHZPjNNPtslFBfa5Wcpv3Ofn9hqL8UgmBv4XKBaCcrvP794VGo
         KM9EhDhL3Zdm2fVvTYECNm9fkNoRNwH4BWJ+uo/T6SQRGx+iH7xBNj0Nwsqq/ZtoHAVw
         Qb5w==
X-Received: by 10.68.248.6 with SMTP id yi6mr22936187pbc.158.1445870800048;
        Mon, 26 Oct 2015 07:46:40 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id zk3sm34430473pbb.41.2015.10.26.07.46.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 07:46:38 -0700 (PDT)
Date: Mon, 26 Oct 2015 20:16:32 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] Staging: wilc1000: coreconfigurator: Drop unneeded
 wrapper functions
Message-ID: <fefff76c175d0ee7d66634bb779f335e75054c45.1445607608.git.shivanib134@gmail.com>
References: <cover.1445607608.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445607608.git.shivanib134@gmail.com>
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
Changes in v3:
	-Make commit message better
Changes in v2:
	-Use standard linux function and hide the offset
 
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


