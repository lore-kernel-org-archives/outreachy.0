X-GM-THRID: 6330275775734874112
X-Received: by 10.66.8.66 with SMTP id p2mr3519497paa.11.1473882461651;
        Wed, 14 Sep 2016 12:47:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.162.132 with SMTP id l126ls597582ioe.34.gmail; Wed, 14 Sep
 2016 12:47:41 -0700 (PDT)
X-Received: by 10.36.204.68 with SMTP id x65mr3802388itf.3.1473882461057;
        Wed, 14 Sep 2016 12:47:41 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id um12si1487352pab.2.2016.09.14.12.47.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 12:47:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id p2so1129198pap.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 12:47:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=P7iPJLsX5SXRZIkQMqKmw+3gjsP5SolJVYOkRJ97KwA=;
        b=vH0aszmauFHsdVQm9Cd2FC0dNB49AqA9F027spWvImZqgkRBFd3OtUte/UEO6/c3bG
         slh/1u8XCKLDDVK+AtO2xlkVKBonzwHniubrocl8sRmKv/jbBLU9b+6LV81gJv7mSpQx
         2Z3nU2B53pnclqg5Q+byeXaljADif5T9eMYzTSBUUjYg/yPYuQpV6p1kLeOQb4zp2gWo
         goMH5cY6g7g+7Ow21H9g0Mn+AOmzf7RQeAxqz9zTMEbIFRE8FFuNpBaL/UiZCPsS6ZOx
         GpjqfNmsRBKJf2grpmAPV8L42lp2kZjjRS5SHAPn+/R6py8KtTLmZxZ5atWB/FwtO9wd
         gc0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=P7iPJLsX5SXRZIkQMqKmw+3gjsP5SolJVYOkRJ97KwA=;
        b=Qs56PPva0w5G/U+rjICvvMJ/OwxJuYgUQ4Uy5Fam3cGKKj3stPUq0san1cdpVEvzPT
         V/KDmMzdvtkSxTK6MeGdrbt270FYLXOS8144vojtpYzkaMC0aSrO9COEiNKtkwHnD4X+
         V+jeahrThc3g+1d3on+Xd8LFBaMjO9RszNqb8Qykg0fLID0kMPRmqSljY6wWWVLqYzsl
         OTtUhOnjzXVuv1a8sdytPzElXWD4o4NWJcKYNLWipZdPIZ2LUm3Ty446nfNPQIyTeuo7
         pinZ4TddMS6gLYaYskmCwJURKjr5MYE9NDSRgTC0oIy3kjRZyguy8fuhyOJC10E/TCkc
         Q/iA==
X-Gm-Message-State: AE9vXwMGudUpgxrK1t4qyy/MtqJPTP4YRJEx8nkjmu0zMJLBIq9fBYjA02tONs6M4eoxGQ==
X-Received: by 10.66.11.167 with SMTP id r7mr7549426pab.136.1473882460774;
        Wed, 14 Sep 2016 12:47:40 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.240.22])
        by smtp.gmail.com with ESMTPSA id s1sm7287966paz.47.2016.09.14.12.47.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 12:47:40 -0700 (PDT)
Date: Thu, 15 Sep 2016 01:17:28 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 2/6] staging: ks7010: ks7010_sdio.c: Remove braces following
 single statement blocks
Message-ID: <b5b0cbbb029ae84145242070bf2f70cfdb0ded44.1473877138.git.karniksayli1995@gmail.com>
References: <cover.1473877138.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1473877138.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

The patch removes braces {} for single statement blocks, as suggested by
checkpatch.pl.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/ks7010/ks7010_sdio.c | 41 +++++++++++++++++-------------------
 1 file changed, 19 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
index 36e6734..852d887 100644
--- a/drivers/staging/ks7010/ks7010_sdio.c
+++ b/drivers/staging/ks7010/ks7010_sdio.c
@@ -159,9 +159,9 @@ void ks_wlan_hw_wakeup_request(struct ks_wlan_private *priv)
 		rw_data = WAKEUP_REQ;
 		retval =
 		    ks7010_sdio_write(priv, WAKEUP, &rw_data, sizeof(rw_data));
-		if (retval) {
+		if (retval)
 			DPRINTK(1, " error : WAKEUP=%02X\n", rw_data);
-		}
+
 		DPRINTK(4, "wake up : WAKEUP=%02X\n", rw_data);
 		priv->last_wakeup = jiffies;
 		++priv->wakeup_count;
@@ -402,9 +402,8 @@ static void rx_event_task(unsigned long dev)
 		hostif_receive(priv, rp->data, rp->size);
 		inc_rxqhead(priv);
 
-		if (cnt_rxqbody(priv) > 0) {
+		if (cnt_rxqbody(priv) > 0)
 			tasklet_schedule(&priv->ks_wlan_hw.rx_bh_task);
-		}
 	}
 
 	return;
@@ -432,9 +431,8 @@ static void ks_wlan_hw_rx(void *dev, uint16_t size)
 	retval =
 	    ks7010_sdio_read(priv, DATA_WINDOW, &rx_buffer->data[0],
 			     hif_align_size(size));
-	if (retval) {
+	if (retval)
 		goto error_out;
-	}
 
 	/* length check */
 	if (size > 2046 || size == 0) {
@@ -449,9 +447,9 @@ static void ks_wlan_hw_rx(void *dev, uint16_t size)
 		retval =
 		    ks7010_sdio_write(priv, READ_STATUS, &read_status,
 				      sizeof(read_status));
-		if (retval) {
+		if (retval)
 			DPRINTK(1, " error : READ_STATUS=%02X\n", read_status);
-		}
+
 		goto error_out;
 	}
 
@@ -465,9 +463,9 @@ static void ks_wlan_hw_rx(void *dev, uint16_t size)
 	retval =
 	    ks7010_sdio_write(priv, READ_STATUS, &read_status,
 			      sizeof(read_status));
-	if (retval) {
+	if (retval)
 		DPRINTK(1, " error : READ_STATUS=%02X\n", read_status);
-	}
+
 	DPRINTK(4, "READ_STATUS=%02X\n", read_status);
 
 	if (atomic_read(&priv->psstatus.confirm_wait)) {
@@ -551,9 +549,9 @@ static void ks7010_rw_function(struct work_struct *work)
 		ks_wlan_hw_rx((void *)priv,
 			      (uint16_t) (((rw_data & RSIZE_MASK) << 4)));
 	}
-	if ((rw_data & WSTATUS_MASK)) {
+	if ((rw_data & WSTATUS_MASK))
 		tx_device_task((void *)priv);
-	}
+
 	_ks_wlan_hw_power_save(priv);
 
  err_out:
@@ -903,9 +901,8 @@ static void ks7010_card_init(struct ks_wlan_private *priv)
 		DPRINTK(1, "wait time out!! SME_START\n");
 	}
 
-	if (priv->mac_address_valid && priv->version_size) {
+	if (priv->mac_address_valid && priv->version_size)
 		priv->dev_state = DEVICE_STATE_PREINIT;
-	}
 
 	hostif_sme_enqueue(priv, SME_GET_EEPROM_CKSUM);
 
@@ -1048,9 +1045,9 @@ static int ks7010_sdio_probe(struct sdio_func *func,
 	init_completion(&priv->ks_wlan_hw.ks7010_sdio_wait);
 	priv->ks_wlan_hw.read_buf = NULL;
 	priv->ks_wlan_hw.read_buf = kmalloc(RX_DATA_SIZE, GFP_KERNEL);
-	if (!priv->ks_wlan_hw.read_buf) {
+	if (!priv->ks_wlan_hw.read_buf)
 		goto error_free_netdev;
-	}
+
 	priv->dev_state = DEVICE_STATE_PREBOOT;
 	priv->net_dev = netdev;
 	priv->firmware_version[0] = '\0';
@@ -1086,9 +1083,9 @@ static int ks7010_sdio_probe(struct sdio_func *func,
 	sdio_claim_host(func);
 	ret = ks7010_sdio_write(priv, INT_PENDING, &rw_data, sizeof(rw_data));
 	sdio_release_host(func);
-	if (ret) {
+	if (ret)
 		DPRINTK(1, " error : INT_PENDING=%02X\n", rw_data);
-	}
+
 	DPRINTK(4, " clear Interrupt : INT_PENDING=%02X\n", rw_data);
 
 	/* enable ks7010sdio interrupt (INT_GCR_B|INT_READ_STATUS|INT_WRITE_STATUS) */
@@ -1096,9 +1093,9 @@ static int ks7010_sdio_probe(struct sdio_func *func,
 	sdio_claim_host(func);
 	ret = ks7010_sdio_write(priv, INT_ENABLE, &rw_data, sizeof(rw_data));
 	sdio_release_host(func);
-	if (ret) {
+	if (ret)
 		DPRINTK(1, " error : INT_ENABLE=%02X\n", rw_data);
-	}
+
 	DPRINTK(4, " enable Interrupt : INT_ENABLE=%02X\n", rw_data);
 	priv->dev_state = DEVICE_STATE_BOOT;
 
@@ -1199,9 +1196,9 @@ static void ks7010_sdio_remove(struct sdio_func *func)
 		unregister_netdev(netdev);
 
 		trx_device_exit(priv);
-		if (priv->ks_wlan_hw.read_buf) {
+		if (priv->ks_wlan_hw.read_buf)
 			kfree(priv->ks_wlan_hw.read_buf);
-		}
+
 		free_netdev(priv->net_dev);
 		card->priv = NULL;
 	}
-- 
2.7.4


