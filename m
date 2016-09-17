X-GM-THRID: 6331313577585016832
X-Received: by 10.36.0.77 with SMTP id 74mr719944ita.23.1474123815901;
        Sat, 17 Sep 2016 07:50:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.52.205 with SMTP id t13ls1910647otd.20.gmail; Sat, 17 Sep
 2016 07:50:15 -0700 (PDT)
X-Received: by 10.13.197.65 with SMTP id h62mr12297520ywd.4.1474123815537;
        Sat, 17 Sep 2016 07:50:15 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 142si5297942pfx.2.2016.09.17.07.50.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 07:50:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id n24so4913466pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 07:50:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=NhQtOQhdWY4Mj37arZIMgUMm/fzgbeOh+G2UUBws7lQ=;
        b=ub53EkHJIMYPJqZSDziRj6NEtrQO4IucSuqQyP+cIO7OkeNqpYwNqhpmRY+Y3PO70D
         WwrYYrDT2C9t0lm3qoaXCTPpkK92tjws0lD1KacTAqz7fYojtWWyZFB8sMLaN25gxbSR
         dMfKX5NvBiizsIs64288GjRhC4ABYVwW4QKkO3+Nd9NhHjHbt8+pllIoo9EvxS45tsUx
         lnYUwvYJQkjJzIWRdA3jyU/h008U7E458fyvyq9nocVOv4FBr3S7NL0oACQE+ZPbJT3t
         6t0feYihUbRUfWFgNezl+s2nlABRHfTs9ur2fI4k9zXyC+fufZkU4rXY0S0nHHU0ElfT
         JIwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=NhQtOQhdWY4Mj37arZIMgUMm/fzgbeOh+G2UUBws7lQ=;
        b=L+3p1QDz3wbGJC9AznVkrCpbp61R/KKIQ3/GtYrk1K2YjxM5KswxHrqTwFPa1dV2X6
         ILf4y6yWby3K4kP7wMAuVpqXtzDNfoypjatD4U/oxBtbvTk2UYWMI0IKBFJO9IRJtDEo
         MuVK70ucf94O4msSW9nPkoiYfmqmRLWysFZNVWh0e4wdtMj65NKtRfSWJdh7knm1o/Ew
         FE5tufa7m1uipU9fLRD4VTc/aIt1FeleeSI2JQX6KNvskrsRPrsDUxLzOAf46BoOf0/2
         cRhGuPj7hHrg7FjjgrKIJNQkaCAyWfbf5fxB33bA1Dj+DDEo/IAGaVCORtjYvsw0SXxr
         QwiQ==
X-Gm-Message-State: AE9vXwMasZP3rhQ9fAm+uTXq+uQZtec6gz/2Z3sXSfIc1yEKkdnAYnHehvl0McsHMZp5ew==
X-Received: by 10.98.87.90 with SMTP id l87mr31978385pfb.133.1474123815322;
        Sat, 17 Sep 2016 07:50:15 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.188.198])
        by smtp.gmail.com with ESMTPSA id q14sm40634787pfg.63.2016.09.17.07.50.07
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 17 Sep 2016 07:50:14 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Sat, 17 Sep 2016 20:19:56 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: bhumirks@gmail.com,
	outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	ganesh.krishna@microchip.com,
	aditya.shankar@microchip.com
Subject: [PATCH] Staging: wilc1000: Remove some function prototypes
Date: Sat, 17 Sep 2016 20:19:55 +0530
Message-Id: <1474123795-13448-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch removes some static function prototypes as they
were getting used only in the declaration of structure 
wilc_netdev_ops. So, after moving the structure declaration below the 
function definition of all these functions, the prototypes can be 
complelety dropped. The structure is moved to an appropriate location 
so that it is not used before its declaration.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/wilc1000/linux_wlan.c | 26 +++++++++++---------------
 1 file changed, 11 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/wilc1000/linux_wlan.c b/drivers/staging/wilc1000/linux_wlan.c
index 6370a5e..7242532 100644
--- a/drivers/staging/wilc1000/linux_wlan.c
+++ b/drivers/staging/wilc1000/linux_wlan.c
@@ -34,24 +34,9 @@ static int wlan_deinit_locks(struct net_device *dev);
 static void wlan_deinitialize_threads(struct net_device *dev);
 
 static void linux_wlan_tx_complete(void *priv, int status);
-static int  mac_init_fn(struct net_device *ndev);
-static struct net_device_stats *mac_stats(struct net_device *dev);
-static int  mac_ioctl(struct net_device *ndev, struct ifreq *req, int cmd);
-static void wilc_set_multicast_list(struct net_device *dev);
 
 bool wilc_enable_ps = true;
 
-static const struct net_device_ops wilc_netdev_ops = {
-	.ndo_init = mac_init_fn,
-	.ndo_open = wilc_mac_open,
-	.ndo_stop = wilc_mac_close,
-	.ndo_start_xmit = wilc_mac_xmit,
-	.ndo_do_ioctl = mac_ioctl,
-	.ndo_get_stats = mac_stats,
-	.ndo_set_rx_mode  = wilc_set_multicast_list,
-
-};
-
 static int dev_state_ev_handler(struct notifier_block *this,
 				unsigned long event, void *ptr)
 {
@@ -1244,6 +1229,17 @@ void wilc_netdev_cleanup(struct wilc *wilc)
 }
 EXPORT_SYMBOL_GPL(wilc_netdev_cleanup);
 
+static const struct net_device_ops wilc_netdev_ops = {
+	.ndo_init = mac_init_fn,
+	.ndo_open = wilc_mac_open,
+	.ndo_stop = wilc_mac_close,
+	.ndo_start_xmit = wilc_mac_xmit,
+	.ndo_do_ioctl = mac_ioctl,
+	.ndo_get_stats = mac_stats,
+	.ndo_set_rx_mode  = wilc_set_multicast_list,
+
+};
+
 int wilc_netdev_init(struct wilc **wilc, struct device *dev, int io_type,
 		     int gpio, const struct wilc_hif_func *ops)
 {
-- 
1.9.1


