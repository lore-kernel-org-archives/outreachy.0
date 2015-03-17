X-GM-THRID: 8809633284096
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,7389adbc94109dbc
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.25.7 with SMTP id y7mr10330381lbf.21.1426634953786;
        Tue, 17 Mar 2015 16:29:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.94.106 with SMTP id db10ls952839wib.16.canary; Tue, 17 Mar
 2015 16:29:13 -0700 (PDT)
X-Received: by 10.152.164.171 with SMTP id yr11mr7594561lab.4.1426634953480;
        Tue, 17 Mar 2015 16:29:13 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wg0-x234.google.com (mail-wg0-x234.google.com. [2a00:1450:400c:c00::234])
        by gmr-mx.google.com with ESMTPS id i8si36623wif.1.2015.03.17.16.29.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 16:29:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c00::234 as permitted sender) client-ip=2a00:1450:400c:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c00::234 as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x234.google.com with SMTP id v3so21059377wgg.1
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2015 16:29:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=19Bxr26v34k7Yupp7At87S2/sgSm/u54hBJHhWYR130=;
        b=TiymIVdCcFK/Gt+FQsBXeRbhKQtZSJI3hiqtjLsLO+i26jti/I72fqW8B8Jlu7YjcB
         qE8atqNWeYyz7VCLATNIaB3VaGWs6L+vtnq0AOZOGNxM+J8VS8ctPOhVoaUhyDc9l/sd
         hGxWG102We0QdIzatBIy2NYQ4ovu1N99FzXM1Kie+ncZF+XxNgL3J1q5JlX4OazUbzlw
         9lkNtpxN3Y/q8j/AiwVcQfow9CO/m1JqrWtbmWKR3WGjdteBKcKFHE6ijTaRghCXYBJt
         rBXh1q376ydU4TdzcmDwSxithOEvG87oe+ZGcYd/yyT5HUfGqQXxNRFLTB4ZCqHIVHoe
         DdmQ==
X-Received: by 10.194.133.199 with SMTP id pe7mr94317633wjb.120.1426634953383;
        Tue, 17 Mar 2015 16:29:13 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id ps4sm21935447wjc.31.2015.03.17.16.29.11
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 17 Mar 2015 16:29:12 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v2] staging: prism2sta: Replace memcpy with ether_add_copy
Date: Wed, 18 Mar 2015 01:29:04 +0200
Message-Id: <1426634944-24980-1-git-send-email-ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1

Replace memcpy() with ether_addr_copy() since addresses are __aligned(2).
The 2 structures are aligned to u16:

typedef struct hfa384x_authenticateStation_data {
	u8 address[ETH_ALEN];				/* 0	6 */
	u16 status;					/* 6	2 */
	u16 algorithm;					/* 8	2 */
} __packed hfa384x_authenticateStation_data_t;

Total size: 10

typedef struct hfa384x_AuthRequest {
	u8 sta_addr[ETH_ALEN];				/* 0	6 */
	u16 algorithm;					/* 6	2 */
} __packed hfa384x_AuthReq_t;
Total size: 8


Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---

Changes in v2:
	- added 'linux/etherdevice.h'
	- add explanations on why the addresses are u16 aligned

 drivers/staging/wlan-ng/prism2sta.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index 854571f..1eb2e58 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -59,6 +59,8 @@
 #include <linux/netdevice.h>
 #include <linux/workqueue.h>
 #include <linux/byteorder/generic.h>
+#include <linux/etherdevice.h>
+
 
 #include <linux/io.h>
 #include <linux/delay.h>
@@ -1544,7 +1546,7 @@ static void prism2sta_inf_authreq_defer(wlandevice_t *wlandev,
 	 ** authentication.
 	 */
 
-	memcpy(rec.address, inf->info.authreq.sta_addr, ETH_ALEN);
+	ether_addr_copy(rec.address, inf->info.authreq.sta_addr);
 	rec.status = P80211ENUM_status_unspec_failure;
 
 	/*
@@ -1657,8 +1659,8 @@ static void prism2sta_inf_authreq_defer(wlandevice_t *wlandev,
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


