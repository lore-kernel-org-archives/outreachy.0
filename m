X-GM-THRID: 6524431890733072384
X-Received: by 10.80.242.130 with SMTP id f2mr4766189edm.5.1519087684717;
        Mon, 19 Feb 2018 16:48:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.190.10 with SMTP id a10ls4747279edi.6.gmail; Mon, 19 Feb
 2018 16:48:03 -0800 (PST)
X-Google-Smtp-Source: AH8x225nPUKCCStdD1wefOFOCyNh0HzGnusIY4TjjM74uESHU+QXQ5H+Irxgn2MIM/0E7sEudAfz
X-Received: by 10.80.146.109 with SMTP id j42mr4184126eda.6.1519087683651;
        Mon, 19 Feb 2018 16:48:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519087683; cv=none;
        d=google.com; s=arc-20160816;
        b=A4NaBebAQPAnP6QN5m4f3WCGfmzxPVswi6Amo5EsrpenJWI74wawaMynGmrSMqj25n
         hmgjPnD65MtjKq1cFVFhdNqv6Ld4azZVVOEfLH9u15gXQIEGCFMAVAq5uMBNfD9FFNQK
         RZhuovdmi/zGNAYxD3H7IAyUEyFFLtr1gRq2kueCodoeNFo3nUkQDiifovfsOn/LYYQS
         T9oa6VKCspdAyrINaQYlqqpnFlKdJ6jNRj/brCOHtAFaWC/0th3++2sZky9IGc7Jb5KE
         AIGUXockh9k1PZk1AE6Yh/21EqpKDdinlu+E71eIh9DPqQ/374XMFL4jpPIXSAeBWbYC
         OJEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=Ip6PtoHuTprGXbfo1KREgf3s1ZP3Pi5NGKrfjsRtEpI=;
        b=FvX411kzeL/7iVlK9qpJd7CyMkQQb1K9RgGxFgwLa1ELglEhgH3LEccKMtL1qyAC9d
         81MNG/R5gJLrF7oYGaQccZpr61hgHPPojHNSkxDR9Eft3AL/bId6jlQtMWXZgWiYI9yd
         t0LEnVnSwF7JJ/WJsH9HNS9TkeXp4r1gGEPRH07zK5dLz4iV5R+U+Do3dn6begU78/Ir
         rFaKwCYC98ngofZyr9f3BrkM9uRJPjq0alCxc+cUl4GuuRDUPR9R5LPNu138I3xnl3bR
         d3oWaIZt0hZb9562ILJx0oUqWHXDN5AHruvaAHoI7+5Qd/6ZANduEkTa3CzmLfU5jZrW
         44Fw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HsOrwq5M;
       spf=pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=chenyensu0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chenyensu0@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id h9si82887edi.4.2018.02.19.16.48.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Feb 2018 16:48:03 -0800 (PST)
Received-SPF: pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HsOrwq5M;
       spf=pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=chenyensu0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id v71so18170187wmv.2
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Feb 2018 16:48:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Ip6PtoHuTprGXbfo1KREgf3s1ZP3Pi5NGKrfjsRtEpI=;
        b=HsOrwq5M5yH+Dht75vN+/yw9ebDBDYJHv32F/3ecrxyx7zqqbAP4nWgvRSpyHdvkqP
         yHz5a9bPDm07F7OROifcUmAp0/98/NpAsSQLJ1TYCOVzGMyre5t42S/x+1ntY2Je8uri
         fpKiIhU4rn7umfzlaOYsi4/V6iZapchKrctxRBCD4N6yMxWka3FHVxFJ2gkETHDBoviU
         7uxh+h6q7M9Rtx5cwI0FLFK0zd/4Lgl5gfCNU3SpBB1JU9YexnOOQE/idkTwgRDQx95B
         0MJ3enrgKIHK84x0sx5nMCMHIpF74gLuxV5lgwA3hSCfnUM6YX5R6Qzu2IECQ3N0025r
         aRyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Ip6PtoHuTprGXbfo1KREgf3s1ZP3Pi5NGKrfjsRtEpI=;
        b=Kvnhi6C3xoGEOqdSLSf6goMQ2W9bOVf2NGTCMSfWQb8F2XTOhSeSKSnl4Cn3k4bhen
         iSoulIAAABt43JoZJPM7P3RBQCqMK7D/JmOi0pim5YK44mS8RdntRaIA/IrSFBuiIfvh
         VaARK4X8vOKS0EAvIlnvUWK+UInH6IIvdxx3b5t1j6RSjlhT8aYPZjiHSOKSehX6wlHE
         A5ILtJtiB/2D0MGelG8sXDRvQci1chShgOCMuLaj3tapWRelg2n7gbl9nU2qqKrk8gPA
         KfbOsitM7zzNu9vPmn9La0EMcqGGuFAZvqxps8o3pd7RZHVTWVOxi3OAR0nCPXqMM2dI
         qNpA==
X-Gm-Message-State: APf1xPCQ5gtDyB+m3pXPg93OwGS0ulicouveVHPsuU1Ieu8dNfP8psp7
	pb1hLNe/jOBlst9kE8IFWcpqzlixKCI=
X-Received: by 10.28.71.135 with SMTP id m7mr12003115wmi.115.1519087683052;
        Mon, 19 Feb 2018 16:48:03 -0800 (PST)
Return-Path: <chenyensu0@gmail.com>
Received: from outreachy-kernel.wifirst.net (eth-west-pareq2-46-193-1-181.wb.wifirst.net. [46.193.1.181])
        by smtp.googlemail.com with ESMTPSA id d27sm33336876wrd.60.2018.02.19.16.48.02
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 19 Feb 2018 16:48:02 -0800 (PST)
From: Eisha Chen-yen-su <chenyensu0@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Eisha Chen-yen-su <chenyensu0@gmail.com>
Subject: [PATCH 1/2] staging: pi433: Split some function calls
Date: Tue, 20 Feb 2018 01:47:25 +0100
Message-Id: <20180220004726.9662-2-chenyensu0@gmail.com>
X-Mailer: git-send-email 2.14.3
In-Reply-To: <20180220004726.9662-1-chenyensu0@gmail.com>
References: <20180220004726.9662-1-chenyensu0@gmail.com>

Split some function calls on several lines in order to make these
lines no longer than 80 columns. Problem found with checkpatch.

Signed-off-by: Eisha Chen-yen-su <chenyensu0@gmail.com>
---
 drivers/staging/pi433/pi433_if.c | 45 ++++++++++++++++++++++++++--------------
 1 file changed, 30 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/pi433/pi433_if.c b/drivers/staging/pi433/pi433_if.c
index 14712e1bd5eb..4a8e633a0a1d 100644
--- a/drivers/staging/pi433/pi433_if.c
+++ b/drivers/staging/pi433/pi433_if.c
@@ -187,10 +187,12 @@ rf69_set_rx_cfg(struct pi433_device *dev, struct pi433_rx_cfg *rx_cfg)
 	ret = rf69_set_ook_threshold_dec(dev->spi, rx_cfg->threshold_decrement);
 	if (ret < 0)
 		return ret;
-	ret = rf69_set_bandwidth(dev->spi, rx_cfg->bw_mantisse, rx_cfg->bw_exponent);
+	ret = rf69_set_bandwidth(dev->spi, rx_cfg->bw_mantisse,
+				 rx_cfg->bw_exponent);
 	if (ret < 0)
 		return ret;
-	ret = rf69_set_bandwidth_during_afc(dev->spi, rx_cfg->bw_mantisse, rx_cfg->bw_exponent);
+	ret = rf69_set_bandwidth_during_afc(dev->spi, rx_cfg->bw_mantisse,
+					    rx_cfg->bw_exponent);
 	if (ret < 0)
 		return ret;
 	ret = rf69_set_dagc(dev->spi, rx_cfg->dagc);
@@ -206,7 +208,8 @@ rf69_set_rx_cfg(struct pi433_device *dev, struct pi433_rx_cfg *rx_cfg)
 		if (ret < 0)
 			return ret;
 
-		ret = rf69_set_fifo_fill_condition(dev->spi, afterSyncInterrupt);
+		ret = rf69_set_fifo_fill_condition(dev->spi,
+						   afterSyncInterrupt);
 		if (ret < 0)
 			return ret;
 	} else {
@@ -227,7 +230,8 @@ rf69_set_rx_cfg(struct pi433_device *dev, struct pi433_rx_cfg *rx_cfg)
 		if (ret < 0)
 			return ret;
 	}
-	ret = rf69_set_adressFiltering(dev->spi, rx_cfg->enable_address_filtering);
+	ret = rf69_set_adressFiltering(dev->spi,
+				       rx_cfg->enable_address_filtering);
 	if (ret < 0)
 		return ret;
 
@@ -274,7 +278,8 @@ rf69_set_rx_cfg(struct pi433_device *dev, struct pi433_rx_cfg *rx_cfg)
 		ret = rf69_set_node_address(dev->spi, rx_cfg->node_address);
 		if (ret < 0)
 			return ret;
-		ret = rf69_set_broadcast_address(dev->spi, rx_cfg->broadcast_address);
+		ret = rf69_set_broadcast_address(dev->spi,
+						 rx_cfg->broadcast_address);
 		if (ret < 0)
 			return ret;
 	}
@@ -311,7 +316,8 @@ rf69_set_tx_cfg(struct pi433_device *dev, struct pi433_tx_cfg *tx_cfg)
 
 	/* packet format enable */
 	if (tx_cfg->enable_preamble == OPTION_ON) {
-		ret = rf69_set_preamble_length(dev->spi, tx_cfg->preamble_length);
+		ret = rf69_set_preamble_length(dev->spi,
+					       tx_cfg->preamble_length);
 		if (ret < 0)
 			return ret;
 	} else {
@@ -470,10 +476,12 @@ pi433_receive(void *data)
 			goto abort;
 		}
 		bytes_total = dev->rx_cfg.fixed_message_length;
-		dev_dbg(dev->dev, "rx: msg len set to %d by fixed length", bytes_total);
+		dev_dbg(dev->dev, "rx: msg len set to %d by fixed length",
+			bytes_total);
 	} else {
 		bytes_total = dev->rx_buffer_size;
-		dev_dbg(dev->dev, "rx: msg len set to %d as requested by read", bytes_total);
+		dev_dbg(dev->dev, "rx: msg len set to %d as requested by read",
+			bytes_total);
 	}
 
 	/* length byte enabled? */
@@ -489,7 +497,8 @@ pi433_receive(void *data)
 			goto abort;
 		}
 		dev->free_in_fifo++;
-		dev_dbg(dev->dev, "rx: msg len reset to %d due to length byte", bytes_total);
+		dev_dbg(dev->dev, "rx: msg len reset to %d due to length byte",
+			bytes_total);
 	}
 
 	/* address byte enabled? */
@@ -620,8 +629,10 @@ pi433_tx_thread(void *data)
 			device->buffer[position++] = tx_cfg.address_byte;
 
 		/* finally get message data from fifo */
-		retval = kfifo_out(&device->tx_fifo, &device->buffer[position], sizeof(device->buffer) - position);
-		dev_dbg(device->dev, "read %d message byte(s) from fifo queue.", retval);
+		retval = kfifo_out(&device->tx_fifo, &device->buffer[position],
+				   sizeof(device->buffer) - position);
+		dev_dbg(device->dev,
+			"read %d message byte(s) from fifo queue.", retval);
 		mutex_unlock(&device->tx_fifo_lock);
 
 		/* if rx is active, we need to interrupt the waiting for
@@ -724,7 +735,8 @@ pi433_tx_thread(void *data)
 		}
 
 		/* we are done. Wait for packet to get sent */
-		dev_dbg(device->dev, "thread: wait for packet to get sent/fifo to be empty");
+		dev_dbg(device->dev,
+			"thread: wait for packet to get sent/fifo to be empty");
 		wait_event_interruptible(device->fifo_wait_queue,
 					 device->free_in_fifo == FIFO_SIZE ||
 					 kthread_should_stop());
@@ -819,7 +831,8 @@ pi433_write(struct file *filp, const char __user *buf,
 	 * - message
 	 */
 	mutex_lock(&device->tx_fifo_lock);
-	retval = kfifo_in(&device->tx_fifo, &instance->tx_cfg, sizeof(instance->tx_cfg));
+	retval = kfifo_in(&device->tx_fifo, &instance->tx_cfg,
+			  sizeof(instance->tx_cfg));
 	if (retval != sizeof(instance->tx_cfg))
 		goto abort;
 
@@ -996,10 +1009,12 @@ static int setup_GPIOs(struct pi433_device *device)
 	for (i = 0; i < NUM_DIO; i++) {
 		/* "construct" name and get the gpio descriptor */
 		snprintf(name, sizeof(name), "DIO%d", i);
-		device->gpiod[i] = gpiod_get(&device->spi->dev, name, 0 /*GPIOD_IN*/);
+		device->gpiod[i] = gpiod_get(&device->spi->dev, name,
+					     0 /*GPIOD_IN*/);
 
 		if (device->gpiod[i] == ERR_PTR(-ENOENT)) {
-			dev_dbg(&device->spi->dev, "Could not find entry for %s. Ignoring.", name);
+			dev_dbg(&device->spi->dev,
+				"Could not find entry for %s. Ignoring.", name);
 			continue;
 		}
 
-- 
2.14.3


