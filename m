X-GM-THRID: 6330925606572654592
X-Received: by 10.36.0.77 with SMTP id 74mr101894ita.23.1474033705493;
        Fri, 16 Sep 2016 06:48:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.174.140 with SMTP id n12ls1714631ioo.14.gmail; Fri, 16 Sep
 2016 06:48:24 -0700 (PDT)
X-Received: by 10.66.234.38 with SMTP id ub6mr111669pac.145.1474033704091;
        Fri, 16 Sep 2016 06:48:24 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id h124si4185945pfe.0.2016.09.16.06.48.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 06:48:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id q2so1010025pfj.0
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 06:48:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=sht7D7dFMqS3WcqNHDSe5h4paIl7yRoWvb7DG9Hoshc=;
        b=d+s1D3tcdUVLVi8I1HVINCpRDWA1AujlTVAzQ5O9xLwasd3gyYAdaXlKvXqhy27n29
         3yMFD/A12M+YA9y1xWhGGgGne5/N4xYM3v0/OZGTJK8rSDYzp9ZrMd/OXABXm3oPFfw5
         qEQkPICb62BbrJqiXyUDeQJOHAJHHyfV+YTHwLaQwwOgYyhdBjwzrbMJdZ21SAKwaAc7
         yn7dtVNcE9qchFFewyD2rl89MecW0Ibk6eiV1DAuNQmyaobvN8dItN85Eu8W/qaKjndF
         6rlljXxqfm2s4PXMERUW4O+uREtJdGZrC4CeY6xPejXw2Vdm5Dyp3eAE2CwSzoGLQBFA
         IRhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=sht7D7dFMqS3WcqNHDSe5h4paIl7yRoWvb7DG9Hoshc=;
        b=QpmUNcHotbMsTwQ0532xCAyBWfHp8dh44axlZCMNgkdwwgTFLqSjxJXdL3VGSYkvXE
         ELrNvVRo2PvmrAHrretWZV1LUFnHYzhmhzasLfGWwuVeAL0maifX6HHiqu/OUrCK/CQW
         APWga8kHxni2OKZXc0YSS6QrLqq+0xEqp8g96sbaasP0JXlnS4+ClVr3QW/hUk+Zlvdl
         vuBEMltKtv4vBVOLGI1SkAhujFvvrjtXAllbuC3bFU6yEXLsWe8nmcEykVnETRTCagvB
         +uKIiSUKBJA6aBrrsmjpoZfas0ajfx9w8V0pnWpAgRsVo2vLJhzDIyKGBlGAJhUdBL5Q
         h87Q==
X-Gm-Message-State: AE9vXwN62UU7KM5xfOD2PaZ7VAz9HHK0yyg1a/WX+zJYnWCcwIg738aEpJG61Bcch/6lqQ==
X-Received: by 10.98.98.193 with SMTP id w184mr23220049pfb.120.1474033703752;
        Fri, 16 Sep 2016 06:48:23 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.244.96])
        by smtp.gmail.com with ESMTPSA id j1sm223144pfg.95.2016.09.16.06.48.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 06:48:23 -0700 (PDT)
Date: Fri, 16 Sep 2016 19:18:12 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 2/6] staging: ks7010: Remove braces following single
 statement blocks
Message-ID: <38a21c2a1b3bc3476860cfe2080ef85816569e7f.1474032241.git.karniksayli1995@gmail.com>
References: <cover.1474032241.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474032241.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

The patch removes braces {} for single statement blocks, as suggested by
checkpatch.pl.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/ks7010/ks7010_sdio.c | 38 +++++++++++++++++-------------------
 1 file changed, 18 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
index b993804..8e1f68a 100644
--- a/drivers/staging/ks7010/ks7010_sdio.c
+++ b/drivers/staging/ks7010/ks7010_sdio.c
@@ -157,9 +157,9 @@ void ks_wlan_hw_wakeup_request(struct ks_wlan_private *priv)
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
@@ -398,9 +398,8 @@ static void rx_event_task(unsigned long dev)
 		hostif_receive(priv, rp->data, rp->size);
 		inc_rxqhead(priv);
 
-		if (cnt_rxqbody(priv) > 0) {
+		if (cnt_rxqbody(priv) > 0)
 			tasklet_schedule(&priv->ks_wlan_hw.rx_bh_task);
-		}
 	}
 }
 
@@ -426,9 +425,8 @@ static void ks_wlan_hw_rx(void *dev, uint16_t size)
 	retval =
 	    ks7010_sdio_read(priv, DATA_WINDOW, &rx_buffer->data[0],
 			     hif_align_size(size));
-	if (retval) {
+	if (retval)
 		goto error_out;
-	}
 
 	/* length check */
 	if (size > 2046 || size == 0) {
@@ -443,9 +441,9 @@ static void ks_wlan_hw_rx(void *dev, uint16_t size)
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
 
@@ -459,9 +457,9 @@ static void ks_wlan_hw_rx(void *dev, uint16_t size)
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
@@ -545,9 +543,9 @@ static void ks7010_rw_function(struct work_struct *work)
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
@@ -884,9 +882,9 @@ static void ks7010_card_init(struct ks_wlan_private *priv)
 		DPRINTK(1, "wait time out!! SME_START\n");
 	}
 
-	if (priv->mac_address_valid && priv->version_size) {
+	if (priv->mac_address_valid && priv->version_size)
 		priv->dev_state = DEVICE_STATE_PREINIT;
-	}
+
 
 	hostif_sme_enqueue(priv, SME_GET_EEPROM_CKSUM);
 
@@ -1029,9 +1027,9 @@ static int ks7010_sdio_probe(struct sdio_func *func,
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
@@ -1067,9 +1065,9 @@ static int ks7010_sdio_probe(struct sdio_func *func,
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
@@ -1077,9 +1075,9 @@ static int ks7010_sdio_probe(struct sdio_func *func,
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
 
-- 
2.7.4


