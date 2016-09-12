X-GM-THRID: 6329558000960798720
X-Received: by 10.98.23.151 with SMTP id 145mr17557643pfx.5.1473715063045;
        Mon, 12 Sep 2016 14:17:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.244 with SMTP id s49ls11528531otd.18.gmail; Mon, 12 Sep
 2016 14:17:42 -0700 (PDT)
X-Received: by 10.13.201.3 with SMTP id l3mr17480000ywd.24.1473715062650;
        Mon, 12 Sep 2016 14:17:42 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id um12si2584186pab.2.2016.09.12.14.17.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 14:17:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id z84so260186pfi.2
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Sep 2016 14:17:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ApshCf40ov+Mpp7RciXq8k4gEGGdAdwCJ6c3Cb1/6mc=;
        b=FGNwHXVoeM0hS8u+YwBFMgTUtjOvnBJVDrKCnpV8FL3Ftw7EF+17CSEtNxPENug+i0
         UTVW05OWPthdCyJhU2RtJOiybwAxtdOyjiuFcqdArD6iOOZIPVo4KERVb2Ssj0+s8pvB
         zK2d70LaE61RM7YLLSnvtop5m6nIyjOl6pgbpNO5ytwlQZO+xScQlyG71lI9gIgLHReo
         iT4JID4ApSnDGK4DuFjP/GJlhoKJ+lZUmhDLBPxYvurjmeXRgtmUCRv8ogspp9Y6Z165
         VjCVAsVmI4PZAgcx9ecNr98Ckm8yKxJxhUxRfkSa8xn8dILWugHI02h/+STCdoah5mN7
         7yCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ApshCf40ov+Mpp7RciXq8k4gEGGdAdwCJ6c3Cb1/6mc=;
        b=BHYMSzQ5ZGXctPyA8TGW49E2NAJ+0OtNrThE5B3iu++EQeQkYM/djAoWnRttRC+vLX
         ftYlJKJCP1jlBg22ARukZWLQwAe5ofZ1cYCYsPsQZqQBwRliHtfabdwSMA3KhL0kkQTC
         2XD91HO6qpJwI0O8wnc0uhPzhN5owbU5pcMHwWbDe97SHHh7FCdGcO+3H2xVE/g7uCTW
         ejZAEilcRLncxvQ9Dmg0YbtWTn1w3SaXs7Pxi2+Ot42Gd5XK0C9B74ioupp5/EFbiymI
         3CHFZLx8at1d80Ov5/vMGH5s1Ok92Z4GVUpwOPC/EG9HCvR4nda+2ZpUhYbmIPUr1xyC
         XFhg==
X-Gm-Message-State: AE9vXwNHDUN1SPVYseRZcC8oO5fzMYk1aohgrpnPYMf9z3CMhrdOz4+P9noSbqJLJ5Bj0A==
X-Received: by 10.98.0.69 with SMTP id 66mr24958227pfa.140.1473715062210;
        Mon, 12 Sep 2016 14:17:42 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.237.207])
        by smtp.gmail.com with ESMTPSA id f16sm22448070pfd.84.2016.09.12.14.17.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 14:17:41 -0700 (PDT)
Date: Tue, 13 Sep 2016 02:47:28 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [Outreachy kernel] [PATCH] staging: ks7010: Remove the explicit NULL
 comparison
Message-ID: <20160912211728.GA13970@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The patch removes the explicit null comparisons entirely for the ks7010 driver.
This was detected by checkpatch.pl

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/ks7010/ks7010_sdio.c | 14 +++++++-------
 drivers/staging/ks7010/ks_hostif.c   | 30 +++++++++++++++---------------
 drivers/staging/ks7010/ks_wlan_net.c |  2 +-
 3 files changed, 23 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
index b7337fd..129e203 100644
--- a/drivers/staging/ks7010/ks7010_sdio.c
+++ b/drivers/staging/ks7010/ks7010_sdio.c
@@ -268,7 +268,7 @@ static int enqueue_txdev(struct ks_wlan_private *priv, unsigned char *p,
 
 	if (priv->dev_state < DEVICE_STATE_BOOT) {
 		kfree(p);
-		if (complete_handler != NULL)
+		if (complete_handler)
 			(*complete_handler) (arg1, arg2);
 		return 1;
 	}
@@ -277,7 +277,7 @@ static int enqueue_txdev(struct ks_wlan_private *priv, unsigned char *p,
 		/* in case of buffer overflow */
 		DPRINTK(1, "tx buffer overflow\n");
 		kfree(p);
-		if (complete_handler != NULL)
+		if (complete_handler)
 			(*complete_handler) (arg1, arg2);
 		return 1;
 	}
@@ -349,7 +349,7 @@ static void tx_device_task(void *dev)
 
 		}
 		kfree(sp->sendp);	/* allocated memory free */
-		if (sp->complete_handler != NULL)	/* TX Complete */
+		if (sp->complete_handler)	/* TX Complete */
 			(*sp->complete_handler) (sp->arg1, sp->arg2);
 		inc_txqhead(priv);
 
@@ -696,7 +696,7 @@ static void trx_device_exit(struct ks_wlan_private *priv)
 	while (cnt_txqbody(priv) > 0) {
 		sp = &priv->tx_dev.tx_dev_buff[priv->tx_dev.qhead];
 		kfree(sp->sendp);	/* allocated memory free */
-		if (sp->complete_handler != NULL)	/* TX Complete */
+		if (sp->complete_handler)	/* TX Complete */
 			(*sp->complete_handler) (sp->arg1, sp->arg2);
 		inc_txqhead(priv);
 	}
@@ -1029,7 +1029,7 @@ static int ks7010_sdio_probe(struct sdio_func *func,
 
 	/* private memory allocate */
 	netdev = alloc_etherdev(sizeof(*priv));
-	if (netdev == NULL) {
+	if (!netdev) {
 		printk(KERN_ERR "ks7010 : Unable to alloc new net device\n");
 		goto error_release_irq;
 	}
@@ -1146,7 +1146,7 @@ static void ks7010_sdio_remove(struct sdio_func *func)
 
 	card = sdio_get_drvdata(func);
 
-	if (card == NULL)
+	if (!card)
 		return;
 
 	DPRINTK(1, "priv = card->priv\n");
@@ -1168,7 +1168,7 @@ static void ks7010_sdio_remove(struct sdio_func *func)
 			struct hostif_stop_request_t *pp;
 			pp = (struct hostif_stop_request_t *)
 			    kzalloc(hif_align_size(sizeof(*pp)), GFP_KERNEL);
-			if (pp == NULL) {
+			if (!pp) {
 				DPRINTK(3, "allocate memory failed..\n");
 				return;	/* to do goto ni suru */
 			}
diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index a8822fe..f32ce5a 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -1176,7 +1176,7 @@ int hostif_data_request(struct ks_wlan_private *priv, struct sk_buff *packet)
 	    kmalloc(hif_align_size(sizeof(*pp) + 6 + packet_len + 8),
 		    KS_WLAN_MEM_FLAG);
 
-	if (pp == NULL) {
+	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		dev_kfree_skb(packet);
 		return -2;
@@ -1315,7 +1315,7 @@ void hostif_mib_get_request(struct ks_wlan_private *priv,
 	/* make primitive */
 	pp = (struct hostif_mib_get_request_t *)
 	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
-	if (pp == NULL) {
+	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
 	}
@@ -1346,7 +1346,7 @@ void hostif_mib_set_request(struct ks_wlan_private *priv,
 	/* make primitive */
 	pp = (struct hostif_mib_set_request_t *)
 	    kmalloc(hif_align_size(sizeof(*pp) + size), KS_WLAN_MEM_FLAG);
-	if (pp == NULL) {
+	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
 	}
@@ -1376,7 +1376,7 @@ void hostif_start_request(struct ks_wlan_private *priv, unsigned char mode)
 	/* make primitive */
 	pp = (struct hostif_start_request_t *)
 	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
-	if (pp == NULL) {
+	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
 	}
@@ -1404,7 +1404,7 @@ void hostif_ps_adhoc_set_request(struct ks_wlan_private *priv)
 	/* make primitive */
 	pp = (struct hostif_ps_adhoc_set_request_t *)
 	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
-	if (pp == NULL) {
+	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
 	}
@@ -1448,7 +1448,7 @@ void hostif_infrastructure_set_request(struct ks_wlan_private *priv)
 	/* make primitive */
 	pp = (struct hostif_infrastructure_set_request_t *)
 	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
-	if (pp == NULL) {
+	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
 	}
@@ -1515,7 +1515,7 @@ void hostif_infrastructure_set2_request(struct ks_wlan_private *priv)
 	/* make primitive */
 	pp = (struct hostif_infrastructure_set2_request_t *)
 	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
-	if (pp == NULL) {
+	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
 	}
@@ -1585,7 +1585,7 @@ void hostif_adhoc_set_request(struct ks_wlan_private *priv)
 	/* make primitive */
 	pp = (struct hostif_adhoc_set_request_t *)
 	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
-	if (pp == NULL) {
+	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
 	}
@@ -1631,7 +1631,7 @@ void hostif_adhoc_set2_request(struct ks_wlan_private *priv)
 	/* make primitive */
 	pp = (struct hostif_adhoc_set2_request_t *)
 	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
-	if (pp == NULL) {
+	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
 	}
@@ -1679,7 +1679,7 @@ void hostif_stop_request(struct ks_wlan_private *priv)
 	/* make primitive */
 	pp = (struct hostif_stop_request_t *)
 	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
-	if (pp == NULL) {
+	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
 	}
@@ -1702,7 +1702,7 @@ void hostif_phy_information_request(struct ks_wlan_private *priv)
 	/* make primitive */
 	pp = (struct hostif_phy_information_request_t *)
 	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
-	if (pp == NULL) {
+	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
 	}
@@ -1734,7 +1734,7 @@ void hostif_power_mngmt_request(struct ks_wlan_private *priv,
 	/* make primitive */
 	pp = (struct hostif_power_mngmt_request_t *)
 	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
-	if (pp == NULL) {
+	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
 	}
@@ -1761,7 +1761,7 @@ void hostif_sleep_request(struct ks_wlan_private *priv, unsigned long mode)
 		/* make primitive */
 		pp = (struct hostif_sleep_request_t *)
 		    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
-		if (pp == NULL) {
+		if (!pp) {
 			DPRINTK(3, "allocate memory failed..\n");
 			return;
 		}
@@ -1795,7 +1795,7 @@ void hostif_bss_scan_request(struct ks_wlan_private *priv,
 	/* make primitive */
 	pp = (struct hostif_bss_scan_request_t *)
 	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
-	if (pp == NULL) {
+	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
 	}
@@ -1852,7 +1852,7 @@ void hostif_mic_failure_request(struct ks_wlan_private *priv,
 	/* make primitive */
 	pp = (struct hostif_mic_failure_request_t *)
 	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
-	if (pp == NULL) {
+	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
 	}
diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
index 1e21eb1..8462c98 100644
--- a/drivers/staging/ks7010/ks_wlan_net.c
+++ b/drivers/staging/ks7010/ks_wlan_net.c
@@ -3366,7 +3366,7 @@ int ks_wlan_start_xmit(struct sk_buff *skb, struct net_device *dev)
 
 	DPRINTK(3, "in_interrupt()=%ld\n", in_interrupt());
 
-	if (skb == NULL) {
+	if (!skb) {
 		printk(KERN_ERR "ks_wlan:  skb == NULL!!!\n");
 		return 0;
 	}
-- 
2.7.4


