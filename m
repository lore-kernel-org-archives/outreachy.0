X-GM-THRID: 6332043627755208704
X-Received: by 10.157.38.188 with SMTP id l57mr4208607otb.93.1474297694601;
        Mon, 19 Sep 2016 08:08:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.1.7 with SMTP id 7ls1634771otu.25.gmail; Mon, 19 Sep 2016
 08:08:14 -0700 (PDT)
X-Received: by 10.129.55.13 with SMTP id e13mr15501684ywa.9.1474297693826;
        Mon, 19 Sep 2016 08:08:13 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id o13si1595198itc.3.2016.09.19.08.08.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 08:08:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id q2so4747235pfj.0
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 08:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=SqPjbUa4Ld6ge538HFC33oSglo9WpJ1M3OSr8KhyIME=;
        b=wjxBkqLmQzuyMy/r3sy6x9vnC/y0D0HcmCS9MBQus2kN4DdmZWvwIYkrbBUIaCtQeF
         v0DHFe+rYXJdpd23FgqEODOynqegPVIDdKCNw1lGHMKyzVylV+v1qx6pcCL5wWsy/LeE
         pYgYMtVNLTWzy2tRxFaTvHkjpOUk6xTX2ZYVGgeWPR/ocuW3pSYhdjfxRrkr58oe3VWp
         AiccfshVf0WKXeseiJyfmO/0QdS5PtV4hak3nIOSqOO3QgRrbEfJLLn3nGKjME9yzNqO
         75O+u2udknzz9hdZKw5oyNW6ZIMYKGvy1xNPqhAiP9E74mfxMrQMVT8le4P4xsVKHOvu
         p6sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=SqPjbUa4Ld6ge538HFC33oSglo9WpJ1M3OSr8KhyIME=;
        b=mxpasdlxdpvguGPcfw3UoBbg3I4CRoD7pIVEFYLM07nomJtEUN/ywbZS4Wz8lZE1Gd
         ySBiLYqaN6SXh6meEBbbjn45XRzRQJdAOH4mWEMXXbl9iX4zMAK7mStx/3YjZ/H5L2X2
         ap87vgsovtJ5GESNn/W6MvedJgFzTv3J2lJXxASsQxDgvTKLrpPevaVSgN0QXmtksHFr
         lsmho2HaH1eu8Y0pegmx7uE+Y1t5mG4WtdY+BjayZ7LvBL4cRZHu0AH1OvUSvYw624bb
         y+zKvTjdyheCnWWQK2dInVW8BGHj4Qi+RUCJhjPMAkuqRI39+aZepsD+KlDkst02fipi
         vbaw==
X-Gm-Message-State: AE9vXwONHzKm9nnlXkxawBbB+oX81izQlflk3fh8Wyrh0P20aXUP21+whRnWjLO21K/xHA==
X-Received: by 10.98.14.20 with SMTP id w20mr48112408pfi.9.1474297693594;
        Mon, 19 Sep 2016 08:08:13 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.144.220])
        by smtp.gmail.com with ESMTPSA id d188sm20131328pfd.3.2016.09.19.08.08.02
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 19 Sep 2016 08:08:12 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Mon, 19 Sep 2016 20:37:54 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	ganesh.krishna@microchip.com,
	aditya.shankar@microchip.com,
	gregkh@linuxfoundation.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v3 1/2] Staging: wilc1000: Drop static function prototypes
Date: Mon, 19 Sep 2016 20:37:35 +0530
Message-Id: <1474297656-2989-2-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1474297656-2989-1-git-send-email-bhumirks@gmail.com>
References: <1474297656-2989-1-git-send-email-bhumirks@gmail.com>

Drop the prototypes of some static functions. To be compatible with the
changes move the declaration of wilc_netdev_ops structure  lower in the
file, after the definition of these functions used in its initializer.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
Changes in v2:
- Combine it into a patchset.
- Correct the subject line and commit message.
Changes in v3:
- Sending v3 as "v2" was not prefixed in subject line.
 
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


