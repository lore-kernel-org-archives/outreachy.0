X-GM-THRID: 6330911507339018240
X-Received: by 10.129.72.129 with SMTP id v123mr10331681ywa.21.1474031454730;
        Fri, 16 Sep 2016 06:10:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.155 with SMTP id h27ls2853666otc.37.gmail; Fri, 16 Sep
 2016 06:10:54 -0700 (PDT)
X-Received: by 10.13.237.135 with SMTP id w129mr68849ywe.150.1474031454303;
        Fri, 16 Sep 2016 06:10:54 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 7si2624013pfw.1.2016.09.16.06.10.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 06:10:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id n24so3634007pfb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 06:10:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=KwvoOEa1Hs7vtJa8z4Tj/hzxkwmD26dqXA5txXxlWoY=;
        b=PxEwBkM5Ngc5bnaEFDkYwJwXEIoHVXXN5JStRCC4Cw4w5lj4sRigxiQ0XdVTP3CKkL
         Q2a7XUVfeRQVg4bG7qf+dBJ/vTInbe5Wu7hA4ffr9SITmAZcemrft7purpvZijDuNFHV
         dF1LdUOzv0Fwn18JvtbEJANYUp3raP4dtDrZzJ7LcuFmQ2dx+7cdOY+ov5qLYFkOneJa
         q5rHw/M1QTmHIEVG2Clh1X7ULZmfxGD6D7qEmGXCDiYWqYYCdm3ibmWGnskpvQIYB8EA
         iwFkQm0WaAkHpOq7OvueZw0ueZWbFNRl9Ghh2BsgAiwub1oKUzd/POGkEwYSlvLKmFV2
         obBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=KwvoOEa1Hs7vtJa8z4Tj/hzxkwmD26dqXA5txXxlWoY=;
        b=Y9qq9FlqWA7XZvIPUGrvyWr6NpXrMvmrtlwdG8RE0IjjYeJACmzpPEwUP8FWQqbsoc
         S7cR+J+4SSknnrV1SsAjXWP4NuLptjaCJQYei0N57CqioBLdWJj9ftgdT4XeD0cU74Fa
         gfVV74tTrYoU1F6YJwlqwSQso2qWOHT6TFTmCv6fYMOzrW3n1q7oWT3ERMcVrqTCy4vy
         mrx3sUoO4rH8v9igOo9J/TLv2JXe+MwD4gAMFETK5PzLHbW1s3uRKUANgymlKnVN7m6A
         0Z3c3wMbJWgz2U+hNNI7MMvrWCVrpHoVmcG6tue3Kij6yDLFU5GIEGW+pxGM5hdENoJI
         GRsA==
X-Gm-Message-State: AE9vXwO0ZGtcv+GkQirzQa8eD/Dqme+27a0y9NM5tdHlNl3wD3KDc9pMlaAaaj4KBMegCg==
X-Received: by 10.98.14.20 with SMTP id w20mr23261005pfi.9.1474031454075;
        Fri, 16 Sep 2016 06:10:54 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.173.112])
        by smtp.gmail.com with ESMTPSA id ve9sm12357050pac.12.2016.09.16.06.10.45
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 16 Sep 2016 06:10:52 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Fri, 16 Sep 2016 18:40:39 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v2] Staging: ks7010: Replace memset with eth_zero_addr
Date: Fri, 16 Sep 2016 18:40:34 +0530
Message-Id: <1474031434-24792-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Use eth_zero_addr to assign zero address to the given address array
instead of memset when the second argument in memset is address
of zero. Coccinelle was used to do the replacement and add the
header file linux/etherdevice.h if not added by default.
Script:
@header@
@@
#include <linux/etherdevice.h>

@r1@
expression e;
@@

-memset(e,0,ETH_ALEN);
+eth_zero_addr(e);

@includeheader depends on r1 && (!header)@
@@
+ #include <linux/etherdevice.h>

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
Changes in v2: add a space after #include in the semantic patch.

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


