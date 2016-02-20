X-GM-THRID: 6253434761012838400
X-Received: by 10.129.156.66 with SMTP id t63mr18499451ywg.38.1455991240257;
        Sat, 20 Feb 2016 10:00:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.234 with SMTP id z10ls238334igl.1.gmail; Sat, 20 Feb
 2016 10:00:39 -0800 (PST)
X-Received: by 10.98.89.132 with SMTP id k4mr18575847pfj.4.1455991239762;
        Sat, 20 Feb 2016 10:00:39 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x229.google.com (mail-pf0-x229.google.com. [2607:f8b0:400e:c00::229])
        by gmr-mx.google.com with ESMTPS id ff2si2448052pad.2.2016.02.20.10.00.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 10:00:39 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) client-ip=2607:f8b0:400e:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x229.google.com with SMTP id e127so69040695pfe.3
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 10:00:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=PVPxk4zITrVgEkeh2wAadlYErWO0MhnGin0ChcQKegw=;
        b=nA6jNOQ5TJBCHkOfjZmJKunJGadPhn/UaMhvicyqUIqHOiGU5+Pmdc+gfHbJSFJsPs
         8wR9FI3gspygwydnVu8HgXVWSzLPS1StXqA3xYT1tkvF78AwI8FIEheYxDAIJTM8Tg3t
         2wr7mzeUJ9/qU8tC2rXGxF3DHR7RU2g/ApsZ0lt0WUjQp+V0gWBdgw1ONA1b9N+l5+gK
         0mOsRXPb7Cj3Esrz2+l21wc4oJzFeMinD5I6ICalW+7kXWdDKiWhAO9yGmgC6ves0TFR
         r1No/mxbGAe52M8qLQfc3chMa0YhwycyrrY54WC6RRwIlQFnxWjunkYp/WFmoLUtsu7V
         TgJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=PVPxk4zITrVgEkeh2wAadlYErWO0MhnGin0ChcQKegw=;
        b=VP/aI9I1BX6u7DDln7N+YKBlsfQDxKeuBH1QlsLjPc6vEA5e3YUWQA9Alkq8gSmecs
         bGC1AcJEv8VK5DuELsgc+QgLyAJe2gcB16sfrGTqIHyqKUVUwGfO963aVDm3m/6gXklr
         cvoGJY+FVB6/c3NfoxIi4bgN7CDWKzsjw+qUS/6hxdCXnLwnQ+W9+mP1DQFB5SfxQuW9
         lO1yzN3D0WBnrL4eWnRU+I3p3vHefsyf3eAYYEZmY/YeVRfAhiye+Na/HU/25Ej1qcGV
         +WMoG4ZC7HxFAgcQyQe8bwYpZKa8etiZz1r9veL8dLE+TpPbw9urQo907x7yUX5vP7Gq
         4YlQ==
X-Gm-Message-State: AG10YOROYUCMJi1cAs8aBFUtiItn5OWFq/OXLy1yZOMnrhzzDMyeqXd6BVedU3ZwvlJDfA==
X-Received: by 10.98.69.78 with SMTP id s75mr27123766pfa.102.1455991239638;
        Sat, 20 Feb 2016 10:00:39 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.138.166])
        by smtp.gmail.com with ESMTPSA id y27sm25887148pfi.82.2016.02.20.10.00.34
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 20 Feb 2016 10:00:38 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sat, 20 Feb 2016 23:30:29 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: wilc1000: Remove unused function WILC_WFI_update_stats
Date: Sat, 20 Feb 2016 23:30:25 +0530
Message-Id: <1455991225-22067-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch removes the function WILC_WFI_update_stats as it is not used
anywhere in the kernel. Also remove its declaration from the header
file. Grepped to find the occurences.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 29 -----------------------
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.h |  1 -
 2 files changed, 30 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index d4705b7..60928c3 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -2514,35 +2514,6 @@ static struct cfg80211_ops wilc_cfg80211_ops = {
 
 };
 
-int WILC_WFI_update_stats(struct wiphy *wiphy, u32 pktlen, u8 changed)
-{
-	struct wilc_priv *priv;
-
-	priv = wiphy_priv(wiphy);
-	switch (changed) {
-	case WILC_WFI_RX_PKT:
-	{
-		priv->netstats.rx_packets++;
-		priv->netstats.rx_bytes += pktlen;
-		priv->netstats.rx_time = get_jiffies_64();
-	}
-	break;
-
-	case WILC_WFI_TX_PKT:
-	{
-		priv->netstats.tx_packets++;
-		priv->netstats.tx_bytes += pktlen;
-		priv->netstats.tx_time = get_jiffies_64();
-
-	}
-	break;
-
-	default:
-		break;
-	}
-	return 0;
-}
-
 static struct wireless_dev *WILC_WFI_CfgAlloc(void)
 {
 	struct wireless_dev *wdev;
diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h
index ab53d9d..85a3810 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h
@@ -12,7 +12,6 @@
 
 struct wireless_dev *wilc_create_wiphy(struct net_device *net, struct device *dev);
 void wilc_free_wiphy(struct net_device *net);
-int WILC_WFI_update_stats(struct wiphy *wiphy, u32 pktlen, u8 changed);
 int wilc_deinit_host_int(struct net_device *net);
 int wilc_init_host_int(struct net_device *net);
 void WILC_WFI_monitor_rx(u8 *buff, u32 size);
-- 
1.9.1


