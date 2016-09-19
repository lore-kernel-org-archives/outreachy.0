X-GM-THRID: 6332043627755208704
X-Received: by 10.157.45.130 with SMTP id g2mr3868478otb.130.1474293809274;
        Mon, 19 Sep 2016 07:03:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.21.49 with SMTP id u46ls9904121otf.43.gmail; Mon, 19 Sep
 2016 07:03:28 -0700 (PDT)
X-Received: by 10.157.4.79 with SMTP id 73mr4293976otc.57.1474293808947;
        Mon, 19 Sep 2016 07:03:28 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id 7si4966264pfw.1.2016.09.19.07.03.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 07:03:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id my20so4057981pab.3
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 07:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=WE3I6+bFC6vWzcYAzuobhCNa2gRIgY5KvMQD0YcHsJM=;
        b=pNKd5eofnE6WRTd3HhP9Xe+EXLbLHrHf9Q9qUbGchh5RNhuwVEPVlqo7InZV6SFMpG
         BekzIv3nnUO957gd9PJfuf/pp4hLadw9rTk9euRFf27loooPB/rP329mYZ98nU69iz5n
         lwyOH36cHxhtmYFG7dSpDFzzlzVPuaLAraKMC6iLd8H6IFZhzC3GvNdM+5nLU9kClFEQ
         RUo7sS5DkUczk4FDgOrfECZRxs7Kh2xtQQqbgdhHJUzUsOSPilZkMdnAm/oJEaTyePGD
         lS1tFIbD83Jd/oxh7URY1qzHHNDkRh1pAOJMS8mkf8EIt1VCzOoPljTnigTVXi0IRxmL
         CW4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=WE3I6+bFC6vWzcYAzuobhCNa2gRIgY5KvMQD0YcHsJM=;
        b=gYC9nq0wvyqRp1K0oOuM1TFkQXu0V9CfCTKjb41GGCMiytOYqLSgmYt12/WWG6QmiW
         OAKXPkJUiQ8bQ5NRn0zUeRScPX7atMRTMiVF0GGdOem6S7So4YP9Gh+CGPt8DWFHq0ZT
         BpRdCuG7wlEXSIH8LzsKDEZxGu2VsbM9dYt0rHN5NT3+u1UGQNRz6kIINKNN+WXxHDxT
         gNhBS4u3aezQ8MeodDDhG/posSnEOHfZ9hGLVQ6UNEnsMvoIhcUzCWD7M47SW/kw7+/l
         zZKSMWLkL1pv+Ngtktm4Rjae/ZLzkLsqCCgqf1r2uuWe04tCtHpq0fPknQNAX6kp/tjI
         nebg==
X-Gm-Message-State: AE9vXwNoHgCPS0f0EkqLvoFbpxGbw0Ejjij8IkrDAWy3IRa3kYr0SQlMm++GQ3BqABhQAg==
X-Received: by 10.66.148.68 with SMTP id tq4mr32894149pab.160.1474293808320;
        Mon, 19 Sep 2016 07:03:28 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([223.176.148.113])
        by smtp.gmail.com with ESMTPSA id i68sm72065837pfc.25.2016.09.19.07.03.19
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 19 Sep 2016 07:03:27 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Mon, 19 Sep 2016 19:33:15 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	ganesh.krishna@microchip.com,
	aditya.shankar@microchip.com,
	gregkh@linuxfoundation.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 1/2] Staging: wilc1000: Drop static function prototypes
Date: Mon, 19 Sep 2016 19:32:49 +0530
Message-Id: <1474293770-22208-2-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1474293770-22208-1-git-send-email-bhumirks@gmail.com>
References: <1474293770-22208-1-git-send-email-bhumirks@gmail.com>

Drop the prototypes of some static functions. To be compatible with the
changes move the declaration of wilc_netdev_ops structure  lower in the
file, after the definition of these functions used in its initializer.

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


