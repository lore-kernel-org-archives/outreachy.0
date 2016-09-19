X-GM-THRID: 6332043627755208704
X-Received: by 10.13.228.66 with SMTP id n63mr15248187ywe.57.1474293823464;
        Mon, 19 Sep 2016 07:03:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.41.71 with SMTP id d65ls10423957otb.16.gmail; Mon, 19 Sep
 2016 07:03:43 -0700 (PDT)
X-Received: by 10.157.36.133 with SMTP id z5mr4023698ota.89.1474293823080;
        Mon, 19 Sep 2016 07:03:43 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id um12si4777846pab.2.2016.09.19.07.03.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 07:03:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id n24so7337234pfb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 07:03:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=VZu2WojeWF+csmULa+uT9IGFL/yr2gutsvBU35F1c9g=;
        b=wKaAPNzODTRs1Q+nm5x7YkOlYDTCWZZzBDeZVrT7f5+3nRXvP3J8nvWbAKaaqgQQgj
         dQKW3SnxlpDmRqAxWO4pMxbsHODmuhggbEL3QSqoQ97cB2H6K1t36x4rrvosGX8s5H3R
         YfONI+Cqb4Q9Qk8GjV3ElWYuLduIstO/46JXhzYONF24U9ZegI2lGPQtYI76IxNVMDH6
         6aenvBYpCbSmrCYbf7bwT0q+uMAYz/UebpvfHevoyeeEz20gHmpZQC6I5UY+nyllO13m
         wVnSuP/RcGQH4qBd/sUhaum3L/Je+bzJg5mT88+O/AGC22vM2xQms3GxhxZk9LSvxcQr
         q/2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=VZu2WojeWF+csmULa+uT9IGFL/yr2gutsvBU35F1c9g=;
        b=f+qHZ9Z/9RTyd3RvWfNk+0ey/BElIv4GVsl2Q/xbv0RQHM+gyplm13u6PwrFpq+PWI
         aVG/gAak7lkFLC3aOpLILUxTOs7chuxMhEm3525aXN9gXjsRrAGLvuarg3PrVeSpyjyD
         MJfCugD9/xhoWDKP4Qy6KziKGZ/w70DrWX7F3KFHWvn4MKoCVFuvYLUWvYMrBpvdml9M
         GVxH9fY6eD5DXY7v0dDJvkrbAJjzjEEuepiRBUEzcZerrKiWd2vBd6vylRfuZWmj7wde
         9gBQaR3H0EZ8FSdHq7n1+oPa8bD2Y9Zhi49CeE8dD3GqGbjbwIFj4WMz54CwrdqOM/iX
         isZQ==
X-Gm-Message-State: AE9vXwNpJk4aYnJ8MSIeX+ewj1PY7ipDuBbttTYkG5vJqRHiGyyreZQwa8HUCxEF9XFliQ==
X-Received: by 10.98.60.153 with SMTP id b25mr47602876pfk.12.1474293822883;
        Mon, 19 Sep 2016 07:03:42 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([223.176.148.113])
        by smtp.gmail.com with ESMTPSA id l128sm72086931pfl.21.2016.09.19.07.03.35
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 19 Sep 2016 07:03:41 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Mon, 19 Sep 2016 19:33:30 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	ganesh.krishna@microchip.com,
	aditya.shankar@microchip.com,
	gregkh@linuxfoundation.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 2/2] Staging: wilc1000: Make functions wilc_mac_{open/close} static
Date: Mon, 19 Sep 2016 19:32:50 +0530
Message-Id: <1474293770-22208-3-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1474293770-22208-1-git-send-email-bhumirks@gmail.com>
References: <1474293770-22208-1-git-send-email-bhumirks@gmail.com>

The functions wilc_mac_{open/close} are used only in linux_wlan.c.
Therefore, declare them static and remove their declaration from
header wilc_wlan.h and also remove their extern declaration from
wilc_wfi_cfgoperations.c.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/wilc1000/linux_wlan.c             | 4 ++--
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 3 ---
 drivers/staging/wilc1000/wilc_wlan.h              | 3 ---
 3 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/wilc1000/linux_wlan.c b/drivers/staging/wilc1000/linux_wlan.c
index 7242532..118bff5 100644
--- a/drivers/staging/wilc1000/linux_wlan.c
+++ b/drivers/staging/wilc1000/linux_wlan.c
@@ -832,7 +832,7 @@ static int mac_init_fn(struct net_device *ndev)
 	return 0;
 }
 
-int wilc_mac_open(struct net_device *ndev)
+static int wilc_mac_open(struct net_device *ndev)
 {
 	struct wilc_vif *vif;
 
@@ -1023,7 +1023,7 @@ int wilc_mac_xmit(struct sk_buff *skb, struct net_device *ndev)
 	return 0;
 }
 
-int wilc_mac_close(struct net_device *ndev)
+static int wilc_mac_close(struct net_device *ndev)
 {
 	struct wilc_priv *priv;
 	struct wilc_vif *vif;
diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 2c2e8ac..3b26130 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -90,9 +90,6 @@ static const struct wiphy_wowlan_support wowlan_support = {
 #define IS_MGMT_STATUS_SUCCES			0x040
 #define GET_PKT_OFFSET(a) (((a) >> 22) & 0x1ff)
 
-extern int wilc_mac_open(struct net_device *ndev);
-extern int wilc_mac_close(struct net_device *ndev);
-
 static struct network_info last_scanned_shadow[MAX_NUM_SCANNED_NETWORKS_SHADOW];
 static u32 last_scanned_cnt;
 struct timer_list wilc_during_ip_timer;
diff --git a/drivers/staging/wilc1000/wilc_wlan.h b/drivers/staging/wilc1000/wilc_wlan.h
index de6c4dd..f336f4c 100644
--- a/drivers/staging/wilc1000/wilc_wlan.h
+++ b/drivers/staging/wilc1000/wilc_wlan.h
@@ -297,9 +297,6 @@ void wilc_enable_tcp_ack_filter(bool value);
 int wilc_wlan_get_num_conn_ifcs(struct wilc *);
 int wilc_mac_xmit(struct sk_buff *skb, struct net_device *dev);
 
-int wilc_mac_open(struct net_device *ndev);
-int wilc_mac_close(struct net_device *ndev);
-
 void WILC_WFI_p2p_rx(struct net_device *dev, u8 *buff, u32 size);
 void host_wakeup_notify(struct wilc *wilc);
 void host_sleep_notify(struct wilc *wilc);
-- 
1.9.1


