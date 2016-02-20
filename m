X-GM-THRID: 6253324180362625024
X-Received: by 10.25.18.227 with SMTP id 96mr2381516lfs.4.1455967024183;
        Sat, 20 Feb 2016 03:17:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.167.131 with SMTP id q125ls150990lfe.69.gmail; Sat, 20 Feb
 2016 03:17:03 -0800 (PST)
X-Received: by 10.112.138.98 with SMTP id qp2mr2439924lbb.4.1455967023632;
        Sat, 20 Feb 2016 03:17:03 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x234.google.com (mail-wm0-x234.google.com. [2a00:1450:400c:c09::234])
        by gmr-mx.google.com with ESMTPS id 141si673592wmy.2.2016.02.20.03.17.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 03:17:03 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::234 as permitted sender) client-ip=2a00:1450:400c:c09::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::234 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x234.google.com with SMTP id a4so102982262wme.1
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 03:17:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=fppSWQ7vb9sO1OoL0Gl/YFraXY/Q1qox+A7ZNgVf2eo=;
        b=iWzy/Hn3fLuUoWoikYqAMUisqlcTqgXwBaUjf7gozZA9G/OrImRvhoQwla59n3bH2C
         bUSKhFbKv+Ur0/Gk7AYHoN8mi4CUGcezuVAujRSyXdtRFLdp7WyZUdiMxzJc2FDq0odk
         Epkmk6IEz52QOXwUikL1fcL8vV0q2+eUHto6izH44EPcgHLYZ1ObNnYRxJjL5+bc2RqQ
         WU9Yg5TcLhWMtDgI9p4lgUJd1BF7BoksKogd358cg7US8F3ETnsYBiIUdTNgEEqkMRpb
         ahG7flL9Mp02lfQa3e0ylNcF8HS4ULK/aoIRpht1edNTpcIH2FCMe6mWKkCje85pUqHP
         GD5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=fppSWQ7vb9sO1OoL0Gl/YFraXY/Q1qox+A7ZNgVf2eo=;
        b=mDmWaMQmIlKPr1lmZqCy/Pu5uKeCjXz5H6zrkmf46F03Bgjm+vQh+K6GkeHGRsVBiO
         MobL2G/82FDjSqwTWn5n2235HNMmFuM5hkr26F32bq2JTxL4XEeXq623vumemP669JsQ
         eFxflFY9ic3yMQtYJZeZa8bNyRlTvcowYWdBcoLSdtdZQvv0o9bif6zccTIEPgo40PYN
         JhQjEXldwU6rtJbucgZUwdZjWm8i/4rVev6O4oeJClZwd2pCw+uUW7qXtzcM91iiTSc1
         g8vbzSvB2pjD4DEW8/PSFAj42G97LVgXTVfEwCl10dHTAUC5wj5JPnFaVPQZXeY+XFLT
         RKNw==
X-Gm-Message-State: AG10YORXHwPkq/4jvlmTuJLuEPYGQFFKx1QLBanGDPzdPp76BzAIJFf+Z3v5G32yWZwl/g==
X-Received: by 10.28.48.19 with SMTP id w19mr2017041wmw.18.1455967023509;
        Sat, 20 Feb 2016 03:17:03 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id m6sm7929511wje.21.2016.02.20.03.17.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 20 Feb 2016 03:17:02 -0800 (PST)
Date: Sat, 20 Feb 2016 12:17:00 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: nvec: Fix alignment with the open parenthesis
Message-ID: <20160220111657.GA5065@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Alignment should match open parenthesis. Checkpatch detected these
issues.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
Changes in v2:
	- Code indent should use tabs where possible

 drivers/staging/nvec/nvec.c | 35 +++++++++++++++++++----------------
 1 file changed, 19 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
index bdea8fa..fd0ab34 100644
--- a/drivers/staging/nvec/nvec.c
+++ b/drivers/staging/nvec/nvec.c
@@ -148,7 +148,7 @@ static int nvec_status_notifier(struct notifier_block *nb,
 
 	dev_warn(nvec->dev, "unhandled msg type %ld\n", event_type);
 	print_hex_dump(KERN_WARNING, "payload: ", DUMP_PREFIX_NONE, 16, 1,
-		msg, msg[1] + 2, true);
+		       msg, msg[1] + 2, true);
 
 	return NOTIFY_OK;
 }
@@ -257,7 +257,7 @@ static void nvec_gpio_set_value(struct nvec_chip *nvec, int value)
  * occurred, the nvec driver may print an error.
  */
 int nvec_write_async(struct nvec_chip *nvec, const unsigned char *data,
-			short size)
+		     short size)
 {
 	struct nvec_msg *msg;
 	unsigned long flags;
@@ -313,10 +313,11 @@ int nvec_write_sync(struct nvec_chip *nvec,
 	}
 
 	dev_dbg(nvec->dev, "nvec_sync_write: 0x%04x\n",
-					nvec->sync_write_pending);
+		nvec->sync_write_pending);
 	if (!(wait_for_completion_timeout(&nvec->sync_write,
-				msecs_to_jiffies(2000)))) {
-		dev_warn(nvec->dev, "timeout waiting for sync write to complete\n");
+					  msecs_to_jiffies(2000)))) {
+		dev_warn(nvec->dev,
+			 "timeout waiting for sync write to complete\n");
 		mutex_unlock(&nvec->sync_write_mutex);
 		return -ETIMEDOUT;
 	}
@@ -422,8 +423,8 @@ static int parse_msg(struct nvec_chip *nvec, struct nvec_msg *msg)
 
 	if ((msg->data[0] >> 7) == 1 && (msg->data[0] & 0x0f) == 5)
 		print_hex_dump(KERN_WARNING, "ec system event ",
-				DUMP_PREFIX_NONE, 16, 1, msg->data,
-				msg->data[1] + 2, true);
+			       DUMP_PREFIX_NONE, 16, 1, msg->data,
+			       msg->data[1] + 2, true);
 
 	atomic_notifier_call_chain(&nvec->notifier_list, msg->data[0] & 0x8f,
 				   msg->data);
@@ -493,8 +494,8 @@ static void nvec_rx_completed(struct nvec_chip *nvec)
 {
 	if (nvec->rx->pos != nvec_msg_size(nvec->rx)) {
 		dev_err(nvec->dev, "RX incomplete: Expected %u bytes, got %u\n",
-			   (uint) nvec_msg_size(nvec->rx),
-			   (uint) nvec->rx->pos);
+			(uint) nvec_msg_size(nvec->rx),
+			(uint) nvec->rx->pos);
 
 		nvec_msg_free(nvec, nvec->rx);
 		nvec->state = 0;
@@ -688,8 +689,8 @@ static irqreturn_t nvec_interrupt(int irq, void *dev)
 	if ((status & (RCVD | RNW)) == RCVD) {
 		if (received != nvec->i2c_addr)
 			dev_err(nvec->dev,
-			"received address 0x%02x, expected 0x%02x\n",
-			received, nvec->i2c_addr);
+				"received address 0x%02x, expected 0x%02x\n",
+				received, nvec->i2c_addr);
 		nvec->state = 1;
 	}
 
@@ -778,7 +779,7 @@ static int nvec_i2c_parse_dt_pdata(struct nvec_chip *nvec)
 	}
 
 	if (of_property_read_u32(nvec->dev->of_node, "slave-addr",
-				&nvec->i2c_addr)) {
+				 &nvec->i2c_addr)) {
 		dev_err(nvec->dev, "no i2c address specified");
 		return -ENODEV;
 	}
@@ -854,14 +855,14 @@ static int tegra_nvec_probe(struct platform_device *pdev)
 	INIT_WORK(&nvec->tx_work, nvec_request_master);
 
 	err = devm_gpio_request_one(&pdev->dev, nvec->gpio, GPIOF_OUT_INIT_HIGH,
-					"nvec gpio");
+				    "nvec gpio");
 	if (err < 0) {
 		dev_err(nvec->dev, "couldn't request gpio\n");
 		return -ENODEV;
 	}
 
 	err = devm_request_irq(&pdev->dev, nvec->irq, nvec_interrupt, 0,
-				"nvec", nvec);
+			       "nvec", nvec);
 	if (err) {
 		dev_err(nvec->dev, "couldn't request irq\n");
 		return -ENODEV;
@@ -883,8 +884,10 @@ static int tegra_nvec_probe(struct platform_device *pdev)
 	err = nvec_write_sync(nvec, get_firmware_version, 2, &msg);
 
 	if (!err) {
-		dev_warn(nvec->dev, "ec firmware version %02x.%02x.%02x / %02x\n",
-			msg->data[4], msg->data[5], msg->data[6], msg->data[7]);
+		dev_warn(nvec->dev,
+			 "ec firmware version %02x.%02x.%02x / %02x\n",
+			 msg->data[4], msg->data[5],
+			 msg->data[6], msg->data[7]);
 
 		nvec_msg_free(nvec, msg);
 	}
-- 
2.7.0


