X-GM-THRID: 6253324180362625024
X-Received: by 10.25.138.84 with SMTP id m81mr790130lfd.5.1455968303388;
        Sat, 20 Feb 2016 03:38:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.63.211 with SMTP id m202ls103365wma.1.canary; Sat, 20 Feb
 2016 03:38:22 -0800 (PST)
X-Received: by 10.194.19.195 with SMTP id h3mr2393976wje.1.1455968302905;
        Sat, 20 Feb 2016 03:38:22 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x22c.google.com (mail-wm0-x22c.google.com. [2a00:1450:400c:c09::22c])
        by gmr-mx.google.com with ESMTPS id w128si561195wmd.0.2016.02.20.03.38.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 03:38:22 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22c as permitted sender) client-ip=2a00:1450:400c:c09::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22c as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22c.google.com with SMTP id g62so103923648wme.0
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 03:38:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=hajrhhmftkhy6aLqwLKMe0OgYQrAnnSXk/A3dADd1ug=;
        b=OupeV8EhFSrUzx/lfEZJs9ETIhju6Q4x6vBBWeWAYHAgGgps7lRE+e+buprbueEO4/
         3kY1iL3NDtxSHKbFgoFT3/WIxyPMEUCuNhEfZt1QWNzGQ2XSE+yu71z21qSo/WIEmwMt
         5H9h67REFjX9+/61kVwZp7i3Piog/O1IKjDHl4V8MFIeYYE1gDqqZRB5ubGi9J/qpjRa
         yuZm3CGPlMJB/bKiGQmMkeK9g9VMxgHXSHEhFJftDgpRa3KAKGl6NnG5pDS3+kAq6kV+
         uBWbgMKpdjDggivAxaEM7C5bOvA8ty7fkxZU2NL4PaxVQoX2mbPwmeyWfzqJ3t5IZawe
         /ejg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=hajrhhmftkhy6aLqwLKMe0OgYQrAnnSXk/A3dADd1ug=;
        b=e0715wmM8RPyGi25i/LfLA5oH/K42WwlTs0rcDdK63Az8QtfkTZ9Lal/54NsKqkA75
         7JvaYDKwZ5FjATTvNUJ38Vdi3Qumq0PK14lypsnofYf53l2LHPq2KJBXKFo7PBewB0sN
         Ng7fHT5ZsuYI03YdXYgepBbihnBNq36/2kkLiJ+JLdc+FlGBjhmv/CPi/nwJJF8pmgeM
         RdFyxSXTJKPWV5bYJRsDp5XgqaCazX/HmAZu5a8hYiKQZtMZufXq5C5ZXtx8jwOV2H6T
         kV384O0ImdHHu6kfbrOpc0Nz06sNrUOnOM17oSmjQ2JH9Fei0l7DEOzwl4esqs291jRt
         vDeA==
X-Gm-Message-State: AG10YOSpBCli10cN8neMW8i/VVHL6bUlp9HUKWA4+CNyX6c0bEsVDBekEloUVFCD1KoMpA==
X-Received: by 10.194.78.148 with SMTP id b20mr17886954wjx.71.1455968302782;
        Sat, 20 Feb 2016 03:38:22 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id u9sm11761244wmd.4.2016.02.20.03.38.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 20 Feb 2016 03:38:22 -0800 (PST)
Date: Sat, 20 Feb 2016 12:38:20 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: nvec: Fix alignment with the open parenthesis
Message-ID: <20160220113817.GA6696@sonyv>
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
Changes in v3:
	- No space is necessary after a cast

 drivers/staging/nvec/nvec.c | 35 +++++++++++++++++++----------------
 1 file changed, 19 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
index bdea8fa..c335ae2 100644
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
+			(uint)nvec_msg_size(nvec->rx),
+			(uint)nvec->rx->pos);
 
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


