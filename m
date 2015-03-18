X-GM-THRID: 8976664100864
X-Received: by 10.181.29.66 with SMTP id ju2mr758436wid.1.1426685177445;
        Wed, 18 Mar 2015 06:26:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.202.133 with SMTP id ki5ls157250lac.90.gmail; Wed, 18 Mar
 2015 06:26:16 -0700 (PDT)
X-Received: by 10.112.130.70 with SMTP id oc6mr11363562lbb.13.1426685176836;
        Wed, 18 Mar 2015 06:26:16 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wg0-x235.google.com (mail-wg0-x235.google.com. [2a00:1450:400c:c00::235])
        by gmr-mx.google.com with ESMTPS id el6si149522wib.0.2015.03.18.06.26.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 06:26:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) client-ip=2a00:1450:400c:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x235.google.com with SMTP id cc7so35128954wgb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2015 06:26:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=BoAyZ4FEkLIVVhkVWKhMjvNpWPcWQcDQAyh0qeU8lnQ=;
        b=N/kBfLCaZcQs5q+y3YtvmKI9QBPkEd1pXABIWKAUFsjX0ZVjVRk5WDI2ERsnDUeBgI
         dJCeL8KvJpXFzI0qwEBN+nAPn7pe4W2z9VJRg9MgtagYGoz0l9dlLzkNsBjLFKcYdcn9
         e5KDBRSEP82atO1rVJUGy4uCejlrzjxDO49rNii4CcMo3nBJBbF467RqwALmcmjDEQc7
         OWzZ/KRLOAvqfHmGAZFCxCdWYo8L7A1rZzgXxpG2oU4N/20B6EitGx2wCSa0R21fsFSr
         e5ruq9sDY1mRn5d9HZI2OOSz+PIyBLvhLU1ztZnB7z99JoXmwxmnz0rZP8Q2TgNW6Tto
         dwyw==
X-Received: by 10.194.20.67 with SMTP id l3mr139289125wje.94.1426685176730;
        Wed, 18 Mar 2015 06:26:16 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id hd10sm3210777wib.7.2015.03.18.06.26.14
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Mar 2015 06:26:15 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v3] staging: prism2sta: Replace memcpy with ether_add_copy
Date: Wed, 18 Mar 2015 15:26:05 +0200
Message-Id: <1426685165-8973-1-git-send-email-ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1

Replace memcpy() with ether_addr_copy() since addresses are __aligned(2).
The 2 structures are aligned to u16 as showed below:

typedef struct hfa384x_authenticateStation_data {
u8 address[ETH_ALEN];                           /* 0    6 */
u16 status;                                     /* 6    2 */
u16 algorithm;                                  /* 8    2 */
} __packed hfa384x_authenticateStation_data_t;

Total size: 10

typedef struct hfa384x_AuthRequest {
u8 sta_addr[ETH_ALEN];                          /* 0    6 */
u16 algorithm;                                  /* 6    2 */
} __packed hfa384x_AuthReq_t;
Total size: 8

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---

Changes in v3:
	- removed blank line
	- changed description

 drivers/staging/wlan-ng/prism2sta.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index 854571f..ddb294e 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -59,6 +59,7 @@
 #include <linux/netdevice.h>
 #include <linux/workqueue.h>
 #include <linux/byteorder/generic.h>
+#include <linux/etherdevice.h>
 
 #include <linux/io.h>
 #include <linux/delay.h>
@@ -1544,7 +1545,7 @@ static void prism2sta_inf_authreq_defer(wlandevice_t *wlandev,
 	 ** authentication.
 	 */
 
-	memcpy(rec.address, inf->info.authreq.sta_addr, ETH_ALEN);
+	ether_addr_copy(rec.address, inf->info.authreq.sta_addr);
 	rec.status = P80211ENUM_status_unspec_failure;
 
 	/*
@@ -1657,8 +1658,8 @@ static void prism2sta_inf_authreq_defer(wlandevice_t *wlandev,
 			if (hw->authlist.cnt >= WLAN_AUTH_MAX) {
 				rec.status = P80211ENUM_status_ap_full;
 			} else {
-				memcpy(hw->authlist.addr[hw->authlist.cnt],
-				       rec.address, ETH_ALEN);
+				ether_addr_copy(hw->authlist.addr[hw->authlist.cnt],
+						rec.address);
 				hw->authlist.cnt++;
 				added = 1;
 			}
-- 
1.9.1


