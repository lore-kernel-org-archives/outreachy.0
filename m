X-GM-THRID: 8809633284096
X-Received: by 10.112.73.33 with SMTP id i1mr1539730lbv.0.1426599102094;
        Tue, 17 Mar 2015 06:31:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.84.72 with SMTP id w8ls854429wiy.4.canary; Tue, 17 Mar
 2015 06:31:41 -0700 (PDT)
X-Received: by 10.180.80.132 with SMTP id r4mr6756439wix.4.1426599101810;
        Tue, 17 Mar 2015 06:31:41 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id o3si113793wib.2.2015.03.17.06.31.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 06:31:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id g7so63266320wib.1
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2015 06:31:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=jxWQV9bvzTTyqhGTo4vHXHfTHTuUxnFr09POnh6hwmY=;
        b=y6V85AArY5Ws4Dp3C02R9MHlrtqJy2jHo1Bdd9si/xcv+4pKEzCyze6NZ8bJ/sPAA8
         e7upsi0esEKCnjlJO0KEHg+TUMalScuBx2BMODaokf9By4HVYy3V+nY50cDNku5Tzz7E
         sVHfq6ELgHHFdPXItJ4Q8PdzXLR93qVZJiYSDn/eDFR1GL3abhMGIneug8Wcg7lHyYtb
         G6K5u0Di9LW2TAypO3lli993PcpJIi3lBrLwrXqmf1oed6xkl9lSDjkq5k1wKgKgjwCZ
         AsV47D3qS0BTq1LZLw+dg4hKO7RulddHiUbONWvW6f/WF0jYwKnZ2a6//z6mwCP0qvWD
         7oxw==
X-Received: by 10.195.11.73 with SMTP id eg9mr129954662wjd.62.1426599101706;
        Tue, 17 Mar 2015 06:31:41 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id ga8sm2727619wib.11.2015.03.17.06.31.39
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 17 Mar 2015 06:31:40 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH] staging: prism2sta: Replace memcpy with ether_add_copy
Date: Tue, 17 Mar 2015 15:31:29 +0200
Message-Id: <1426599089-26954-1-git-send-email-ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1

Replace memcpy() with ether_addr_copy() when using __aligned(2) Ethernet
addresses.
Changes done using the following coccinelle script:

@@
expression e1, e2;
@@

- memcpy(e1, e2, ETH_ALEN);
+ ether_addr_copy(e1, e2); 

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/wlan-ng/prism2sta.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index 854571f..09fa76b 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -1544,7 +1544,7 @@ static void prism2sta_inf_authreq_defer(wlandevice_t *wlandev,
 	 ** authentication.
 	 */
 
-	memcpy(rec.address, inf->info.authreq.sta_addr, ETH_ALEN);
+	ether_addr_copy(rec.address, inf->info.authreq.sta_addr);
 	rec.status = P80211ENUM_status_unspec_failure;
 
 	/*
@@ -1657,8 +1657,8 @@ static void prism2sta_inf_authreq_defer(wlandevice_t *wlandev,
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


