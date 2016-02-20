X-GM-THRID: 6253324180362625024
X-Received: by 10.112.200.68 with SMTP id jq4mr1490057lbc.3.1455965493818;
        Sat, 20 Feb 2016 02:51:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.129.81 with SMTP id c78ls91298wmd.51.canary; Sat, 20 Feb
 2016 02:51:32 -0800 (PST)
X-Received: by 10.28.172.194 with SMTP id v185mr149820wme.5.1455965492879;
        Sat, 20 Feb 2016 02:51:32 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x230.google.com (mail-wm0-x230.google.com. [2a00:1450:400c:c09::230])
        by gmr-mx.google.com with ESMTPS id s141si716243wmd.1.2016.02.20.02.51.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 02:51:32 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::230 as permitted sender) client-ip=2a00:1450:400c:c09::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::230 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x230.google.com with SMTP id c200so108971011wme.0
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 02:51:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=boAm6K160wNAdTEdUsNkY/JN3H0bLc/SWrl83SnSVwY=;
        b=TNmYpyrtn2hrMYVXEKoC8KmqMut6MJm0Zh4L53MU1NRtWv9Zlz2OiZnlSvjyEujTWR
         VxPQ2O+zIBEmMyTU+0ZZf4+b1Km0+hR9wnRuwg5ZtsnjD3ZOh89VXSendaSzZrUbrkZh
         FtH2n4VttkHUO5VYVo6L98xIeua7cXA7Fv7B4dPhUviTSaiz3mWGluhnLFMoGp2cU7pO
         +Mnwn+ngsfif2NwJ0zVr50+zmnmq6SW6rcAMMY8kkaKeSqYjE7z3XIlgu3+hsVG0IQyE
         sEYThmCszMci+EDvyCeNFCute6DHu2bdPC9bZ/irCtkgZQoyfizRm2zAohfu+xQemOgV
         A37g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=boAm6K160wNAdTEdUsNkY/JN3H0bLc/SWrl83SnSVwY=;
        b=lKnMgy3tV9A7/G4IRNGU3MU7ted8tffMBFRkjCmkz4XMvnCku7bmsOqZNHxgrb+qvY
         vm/jC0kzDpehfjKes7n2gIEamtNc1Lp+IhyMGeUWZ7TEo1SgUtB0/Kv0b+hR20vyf4pS
         i3vY3FC0fuaz617MrEh2VpyULi7XnaaYMtSIxcmV4ZIE8zfnyX4xg37gdvfs7biTv8ca
         5pbgj8e2B8kTWr8uEjM78IJVC5rsqxkk8aLG9UJHKdjXiuOt6gc6NUMFolr594AwPY71
         5KZk2EiLZ+AahtyCVzZpxPfgQV0zjGtDFUAMG0HyO/vTA/ORFNgu71s7F0XTLTJj7Shw
         1M3Q==
X-Gm-Message-State: AG10YOQTCXDcHgVhiI0olUzNCDo1QCj/WdRV3vSYa/QQzN11q4K1Pt/pHLGsrwA1zZ7uOQ==
X-Received: by 10.194.205.8 with SMTP id lc8mr17254796wjc.177.1455965492767;
        Sat, 20 Feb 2016 02:51:32 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id di1sm15129445wjc.3.2016.02.20.02.51.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 20 Feb 2016 02:51:32 -0800 (PST)
Date: Sat, 20 Feb 2016 11:51:30 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: nvec: Fix alignment with the open parenthesis
Message-ID: <20160220105127.GA3608@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Alignment should match open parenthesis. Checkpatch detected these
issues.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 drivers/staging/nvec/nvec.c | 32 +++++++++++++++++---------------
 1 file changed, 17 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
index bdea8fa..7a499fb 100644
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
@@ -313,9 +313,9 @@ int nvec_write_sync(struct nvec_chip *nvec,
 	}
 
 	dev_dbg(nvec->dev, "nvec_sync_write: 0x%04x\n",
-					nvec->sync_write_pending);
+	        nvec->sync_write_pending);
 	if (!(wait_for_completion_timeout(&nvec->sync_write,
-				msecs_to_jiffies(2000)))) {
+				          msecs_to_jiffies(2000)))) {
 		dev_warn(nvec->dev, "timeout waiting for sync write to complete\n");
 		mutex_unlock(&nvec->sync_write_mutex);
 		return -ETIMEDOUT;
@@ -422,8 +422,8 @@ static int parse_msg(struct nvec_chip *nvec, struct nvec_msg *msg)
 
 	if ((msg->data[0] >> 7) == 1 && (msg->data[0] & 0x0f) == 5)
 		print_hex_dump(KERN_WARNING, "ec system event ",
-				DUMP_PREFIX_NONE, 16, 1, msg->data,
-				msg->data[1] + 2, true);
+			       DUMP_PREFIX_NONE, 16, 1, msg->data,
+			       msg->data[1] + 2, true);
 
 	atomic_notifier_call_chain(&nvec->notifier_list, msg->data[0] & 0x8f,
 				   msg->data);
@@ -493,8 +493,8 @@ static void nvec_rx_completed(struct nvec_chip *nvec)
 {
 	if (nvec->rx->pos != nvec_msg_size(nvec->rx)) {
 		dev_err(nvec->dev, "RX incomplete: Expected %u bytes, got %u\n",
-			   (uint) nvec_msg_size(nvec->rx),
-			   (uint) nvec->rx->pos);
+		        (uint) nvec_msg_size(nvec->rx),
+		        (uint) nvec->rx->pos);
 
 		nvec_msg_free(nvec, nvec->rx);
 		nvec->state = 0;
@@ -688,8 +688,8 @@ static irqreturn_t nvec_interrupt(int irq, void *dev)
 	if ((status & (RCVD | RNW)) == RCVD) {
 		if (received != nvec->i2c_addr)
 			dev_err(nvec->dev,
-			"received address 0x%02x, expected 0x%02x\n",
-			received, nvec->i2c_addr);
+			        "received address 0x%02x, expected 0x%02x\n",
+			        received, nvec->i2c_addr);
 		nvec->state = 1;
 	}
 
@@ -778,7 +778,7 @@ static int nvec_i2c_parse_dt_pdata(struct nvec_chip *nvec)
 	}
 
 	if (of_property_read_u32(nvec->dev->of_node, "slave-addr",
-				&nvec->i2c_addr)) {
+				 &nvec->i2c_addr)) {
 		dev_err(nvec->dev, "no i2c address specified");
 		return -ENODEV;
 	}
@@ -854,14 +854,14 @@ static int tegra_nvec_probe(struct platform_device *pdev)
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
@@ -883,8 +883,10 @@ static int tegra_nvec_probe(struct platform_device *pdev)
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


