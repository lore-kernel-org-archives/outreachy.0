X-GM-THRID: 6330911507339018240
X-Received: by 10.200.41.47 with SMTP id y44mr10456939qty.27.1474030201084;
        Fri, 16 Sep 2016 05:50:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.84.16 with SMTP id t16ls1148456ita.22.canary; Fri, 16 Sep
 2016 05:49:59 -0700 (PDT)
X-Received: by 10.107.6.9 with SMTP id 9mr41304iog.81.1474030199517;
        Fri, 16 Sep 2016 05:49:59 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id si10si2836186pab.1.2016.09.16.05.49.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 05:49:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id pp5so3463700pac.2
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 05:49:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=g2goCQpEwq8lGXh6L8tp8SHbgOPc7/SnFbR9DJ7PAC4=;
        b=My0sAL3sa2f1Zz8ILQc/T7cfpNDMBnptHhHuPfaFtL0F0HdBB+S32KNk2Zg28AXxfF
         brvnNNvL6oQehqLi8PXmtAPVj3cE427mKN3h5A3mqcRtX1aI61OeekxWvsWH0qGe3uBi
         e8SV1xabFEhhcrKR3k7oc3iPqof0P1KsWBca7BAU7x34zSHw/vifIwIxUhDVPi9PO24R
         ZsLpq2CPIpxoJlonwqADekPn7SDzk0vWsJ2qXfEzb8JgNid1iX4iBVGo/W7+uHp99oIY
         ZnT5rdoKsH2eYDjdLKqKKwGsPY6l4Ts8cJSKROtRYQgvYphGwnAPlcN5+7LY9ylhTke3
         wyAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=g2goCQpEwq8lGXh6L8tp8SHbgOPc7/SnFbR9DJ7PAC4=;
        b=IArazY8TxylMEvKy3GUtaP1l0ldmDUKEUwd5/bgBsPgc435a3TjaWW3jQxzMM19oTD
         aP6gW+xSuzCUBZwVyh10CAbHzheaLDxt6jB66LjaoBenxodpT7b0oyQbPowLwXGb2gZh
         csfYR00GrZCyQO2PDCr4eL5lX2fFU1A/LII13EUZ0SNvVPafSEGBU4oV5vKaVuzuEsVW
         B7eaBbnJ6ZRRNOSF9KS46EuQw9IAlo8mHGQGCWhJ6kVNnMT9H8WrLWaFaZeLAaWRepjD
         c57NwM3M9Iymq77+dfBagd0W0f/5JyHajFR5E+KsAmtaSQ744FPlS8GLjj0QTDaMugOQ
         fSQQ==
X-Gm-Message-State: AE9vXwNoJJwcWQBxGhESg0f5nYZevrF5o8MwULQ0FzYQg1m3fKa2tU1GeuB1h9+cL3EHzQ==
X-Received: by 10.66.26.113 with SMTP id k17mr22290577pag.100.1474030193324;
        Fri, 16 Sep 2016 05:49:53 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([223.176.157.43])
        by smtp.gmail.com with ESMTPSA id 64sm4289407pfe.74.2016.09.16.05.49.46
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 16 Sep 2016 05:49:52 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Fri, 16 Sep 2016 18:19:35 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: ks7010: Replace memset with eth_zero_addr
Date: Fri, 16 Sep 2016 18:19:33 +0530
Message-Id: <1474030173-24054-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Use eth_zero_addr to assign zero address to the given address array
instead of memset when the second argument in memset is address
of zero. Coccinelle was used to do the replacement and add the
header file linux/etherdevice.h if not added by default.
Script:
@header@
@@
#include<linux/etherdevice.h>

@r1@
expression e;
@@

-memset(e,0,ETH_ALEN);
+eth_zero_addr(e); 

@includeheader depends on r1 && (!header)@
@@
+ #include<linux/etherdevice.h>
#include<...>

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/ks7010/ks_hostif.c   | 7 ++++---
 drivers/staging/ks7010/ks_wlan_net.c | 6 +++---
 2 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index e3cc8ce..deb82ab 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -14,6 +14,7 @@
 #include "eap_packet.h"
 #include "michael_mic.h"
 
+#include <linux/etherdevice.h>
 #include <linux/if_ether.h>
 #include <linux/if_arp.h>
 
@@ -780,7 +781,7 @@ void hostif_start_confirm(struct ks_wlan_private *priv)
 	wrqu.data.flags = 0;
 	wrqu.ap_addr.sa_family = ARPHRD_ETHER;
 	if ((priv->connect_status & CONNECT_STATUS_MASK) == CONNECT_STATUS) {
-		memset(wrqu.ap_addr.sa_data, '\0', ETH_ALEN);
+		eth_zero_addr(wrqu.ap_addr.sa_data);
 		DPRINTK(3, "IWEVENT: disconnect\n");
 		wireless_send_event(priv->net_dev, SIOCGIWAP, &wrqu, NULL);
 	}
@@ -838,7 +839,7 @@ void hostif_connect_indication(struct ks_wlan_private *priv)
 	wrqu0.ap_addr.sa_family = ARPHRD_ETHER;
 	if ((priv->connect_status & CONNECT_STATUS_MASK) == DISCONNECT_STATUS &&
 	    (old_status & CONNECT_STATUS_MASK) == CONNECT_STATUS) {
-		memset(wrqu0.ap_addr.sa_data, '\0', ETH_ALEN);
+		eth_zero_addr(wrqu0.ap_addr.sa_data);
 		DPRINTK(3, "IWEVENT: disconnect\n");
 		DPRINTK(3, "disconnect :: scan_ind_count=%d\n",
 			priv->scan_ind_count);
@@ -910,7 +911,7 @@ void hostif_stop_confirm(struct ks_wlan_private *priv)
 		if ((priv->connect_status & CONNECT_STATUS_MASK) ==
 		    DISCONNECT_STATUS
 		    && (old_status & CONNECT_STATUS_MASK) == CONNECT_STATUS) {
-			memset(wrqu0.ap_addr.sa_data, '\0', ETH_ALEN);
+			eth_zero_addr(wrqu0.ap_addr.sa_data);
 			DPRINTK(3, "IWEVENT: disconnect\n");
 			printk("IWEVENT: disconnect\n");
 			DPRINTK(3, "disconnect :: scan_ind_count=%d\n",
diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
index c17c45d..70cc9be 100644
--- a/drivers/staging/ks7010/ks_wlan_net.c
+++ b/drivers/staging/ks7010/ks_wlan_net.c
@@ -401,7 +401,7 @@ static int ks_wlan_set_wap(struct net_device *dev, struct iw_request_info *info,
 			priv->need_commit |= SME_MODE_SET;
 		}
 	} else {
-		memset(priv->reg.bssid, 0x0, ETH_ALEN);
+		eth_zero_addr(priv->reg.bssid);
 		return -EOPNOTSUPP;
 	}
 
@@ -432,7 +432,7 @@ static int ks_wlan_get_wap(struct net_device *dev, struct iw_request_info *info,
 	if ((priv->connect_status & CONNECT_STATUS_MASK) == CONNECT_STATUS) {
 		memcpy(awrq->sa_data, &(priv->current_ap.bssid[0]), ETH_ALEN);
 	} else {
-		memset(awrq->sa_data, 0, ETH_ALEN);
+		eth_zero_addr(awrq->sa_data);
 	}
 
 	awrq->sa_family = ARPHRD_ETHER;
@@ -2091,7 +2091,7 @@ static int ks_wlan_set_pmksa(struct net_device *dev,
 			list_for_each(ptr, &priv->pmklist.head) {
 				pmk = list_entry(ptr, struct pmk_t, list);
 				if (!memcmp(pmksa->bssid.sa_data, pmk->bssid, ETH_ALEN)) {	/* match address! list del. */
-					memset(pmk->bssid, 0, ETH_ALEN);
+					eth_zero_addr(pmk->bssid);
 					memset(pmk->pmkid, 0, IW_PMKID_LEN);
 					list_del_init(&pmk->list);
 					break;
-- 
1.9.1


