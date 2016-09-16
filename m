X-GM-THRID: 6330911507339018240
X-Received: by 10.129.102.86 with SMTP id a83mr159615ywc.80.1474035903855;
        Fri, 16 Sep 2016 07:25:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.60.247 with SMTP id t52ls6280110otf.28.gmail; Fri, 16 Sep
 2016 07:25:03 -0700 (PDT)
X-Received: by 10.157.32.202 with SMTP id x68mr144596ota.97.1474035903547;
        Fri, 16 Sep 2016 07:25:03 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id h124si4246499pfe.0.2016.09.16.07.25.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 07:25:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 6so752612pfl.2
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 07:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=kxx2qwoe17nikchLqZWs4nQULwy+yOhqhOSGudhL/lE=;
        b=O/0i1eh7BR+ABCKj0G4LXAEKQMISax5Sq/1zBLXrWwqFh8A60LcrsdPPvyyoDANt/P
         HhwoRB7Xh2oAhsGbNFqc+nj59dzDY4x1xpghLK+guAQAusQbZQfU9ehIyFLRAOommI65
         CsFiO65rma5jAVvWa+QX3C+2w0+yLo5MwLoe5unubaU5tZWs0YaGNgjtH/AaPgwa6GKw
         96L+1HR7RcP8UuveUNlkEaQteq7bSDHnTqfxHAuS/qAgAO7Bn7kuUOyOYSovdKD/yVcE
         OWurbHoVBluXDxA/7IW1kOW3nrk/iqJW4UUkIbBjoPWS47wsaW0VlrRaan+cCxfKpHOZ
         eIIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=kxx2qwoe17nikchLqZWs4nQULwy+yOhqhOSGudhL/lE=;
        b=LEWbPap2MgT5x9ZItWvVt/WolU0gZouSYgMWTk7J5E9cKC6hh2MDF6bXjNQo8iCtKD
         koPwxaWCGsbDHBX9QP8cB4pvQo2rqzfs7T6MDXuDNUnyWhl3+CJw8oO+7BDxWkSEG/yl
         a6nVwceFpT9achc3dFHFHxc6oH784BOVaUgoBpk1ZuG8vrMmPqiGnL2Dsu1iWva+e1aM
         KiQNYJZohx0Zh7yBDZf03oeG3SovkdmrA4gcmSXAEnqKGZcCDZs4CvMiUYZBfpV1OEwv
         kSFDwM4vrcDwSuZG5ETz2CGub6zju2/HEQGaMzKlzolZdXFCA4FVC8ez6cuxAIDBRgZg
         C7nQ==
X-Gm-Message-State: AE9vXwOW1QmBmv31h1LhuWgjun20PP0KVDPQvqD9JcToo/MIYbC9z3OyX3DpojiyC86RJw==
X-Received: by 10.98.153.1 with SMTP id d1mr23353954pfe.13.1474035903345;
        Fri, 16 Sep 2016 07:25:03 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.163.111])
        by smtp.gmail.com with ESMTPSA id u1sm50862150pfb.62.2016.09.16.07.24.50
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 16 Sep 2016 07:25:02 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Fri, 16 Sep 2016 19:54:38 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v3] Staging: ks7010: Replace memset with eth_zero_addr
Date: Fri, 16 Sep 2016 19:54:37 +0530
Message-Id: <1474035877-26234-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Use eth_zero_addr to assign zero address to the given address array
instead of memset when the second argument in memset is address
of zero. Coccinelle was used to do the replacement and add the
header file linux/etherdevice.h if not already present.
Script:
@header@
@@
#include <linux/etherdevice.h>

@r1@
expression e;
@@

-memset(e,0,ETH_ALEN);
+eth_zero_addr(e);

@includeheader depends on r1 && !header@
@@
+ #include <linux/etherdevice.h>
#include <...>

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
Changes in v2:
	- add a space after #include in the semantic patch.
Changes in v3: 
	-Made changes in the semantic patch
	-Modified commit message. 

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


