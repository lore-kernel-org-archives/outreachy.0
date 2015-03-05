X-GM-THRID: 6722745794560
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,aa68bef9b95d0771,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.159.227 with SMTP id xf3mr1392953lbb.11.1425549715413;
        Thu, 05 Mar 2015 02:01:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.12.167 with SMTP id z7ls309979wib.23.canary; Thu, 05 Mar
 2015 02:01:53 -0800 (PST)
X-Received: by 10.180.83.168 with SMTP id r8mr1814966wiy.6.1425549713673;
        Thu, 05 Mar 2015 02:01:53 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id i7si1297769wif.0.2015.03.05.02.01.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 02:01:53 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x236.google.com with SMTP id em10so37033420wid.5
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Mar 2015 02:01:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=k1aJAU3kKRZRy1SrFawhsI9OhHNW8Cpbmbt/WFCdAB4=;
        b=BiM6371UyMMmmUA7BBOSZIGW3nxkiHHU5qS5gKE9Fq2AFwDKP8KzTza2KnDphr7NV/
         qW1gHhDIG9iuBe0QNaq6mdtnMXTK2BOc5LU4dwhqRzRl7DhV78E7Xi25xfd8Gk0cv8jL
         WKk1aonUbg0tkS37usYpa8t3ugKUI4hLCEm6z6Yvz7qex03dLI29vYY1FgAaC+TllnX5
         BeAssHWMGzBbX6MvIgpvjDmJh367PCxnAwV3MjAoqXydZiWbR8kaHPOYoa7jPT0Ejqe9
         8HymI3MkLQSM4IGUe8Cn1Oe1iqdDTBeeXP8DGWo66kQwUX05rp+hf6tmwg24DvAyUZy5
         N0dQ==
X-Received: by 10.194.110.38 with SMTP id hx6mr16537288wjb.128.1425549713574;
        Thu, 05 Mar 2015 02:01:53 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([95.185.221.132])
        by mx.google.com with ESMTPSA id k1sm9763000wjn.9.2015.03.05.02.01.51
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 02:01:52 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 371A862672; Thu,  5 Mar 2015 13:01:50 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH] Staging: comedi: Clean dev_err() logging
Date: Thu,  5 Mar 2015 13:01:49 +0300
Message-Id: <1425549709-21481-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch removes  __func__ from dev_err. dev_err includes information about:
 (devcice, driver, specific instance of device, etc) in the log printout, so there is no need for  __func__.
This was done using Coccinelle, with the following semantic patch:

@a@
expression E;
expression  msg;
@@

dev_err(E, msg, __func__);

@script:python b@
e << a.msg;
y;
@@

if(e.find("%s: ") == True):
	m = e.replace("%s: ", "");
	coccinelle.y = m;
elif(e.find("%s ") == True):
	m = e.replace("%s ", "");
	coccinelle.y = m;
else:
	m = e.replace("%s", "");

@c@
expression a.E, a.msg;
identifier  b.y;
@@

- dev_err(E, msg, __func__);
+ dev_err(E, y);

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/comedi/drivers/cb_pcidas64.c   |  6 ++---
 drivers/staging/comedi/drivers/ni_mio_common.c | 36 ++++++++++----------------
 2 files changed, 15 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/comedi/drivers/cb_pcidas64.c b/drivers/staging/comedi/drivers/cb_pcidas64.c
index 551e9d9..bd24059 100644
--- a/drivers/staging/comedi/drivers/cb_pcidas64.c
+++ b/drivers/staging/comedi/drivers/cb_pcidas64.c
@@ -1703,8 +1703,7 @@ static void i2c_write(struct comedi_device *dev, unsigned int address,
 
 	/*  get acknowledge */
 	if (i2c_read_ack(dev) != 0) {
-		dev_err(dev->class_dev, "%s failed: no acknowledge\n",
-			__func__);
+		dev_err(dev->class_dev, "failed: no acknowledge\n");
 		i2c_stop(dev);
 		return;
 	}
@@ -1712,8 +1711,7 @@ static void i2c_write(struct comedi_device *dev, unsigned int address,
 	for (i = 0; i < length; i++) {
 		i2c_write_byte(dev, data[i]);
 		if (i2c_read_ack(dev) != 0) {
-			dev_err(dev->class_dev, "%s failed: no acknowledge\n",
-				__func__);
+			dev_err(dev->class_dev, "failed: no acknowledge\n");
 			i2c_stop(dev);
 			return;
 		}
diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
index b6ddc01..176b64a 100644
--- a/drivers/staging/comedi/drivers/ni_mio_common.c
+++ b/drivers/staging/comedi/drivers/ni_mio_common.c
@@ -1068,7 +1068,7 @@ static int ni_ai_drain_dma(struct comedi_device *dev)
 			udelay(5);
 		}
 		if (i == timeout) {
-			dev_err(dev->class_dev, "%s timed out\n", __func__);
+			dev_err(dev->class_dev, "timed out\n");
 			dev_err(dev->class_dev,
 				"mite_bytes_in_transit=%i, AI_Status1_Register=0x%x\n",
 				mite_bytes_in_transit(devpriv->ai_mite_chan),
@@ -2116,8 +2116,7 @@ static int ni_ai_insn_read(struct comedi_device *dev,
 				}
 			}
 			if (i == NI_TIMEOUT) {
-				dev_err(dev->class_dev, "%s timeout\n",
-					__func__);
+				dev_err(dev->class_dev, "timeout\n");
 				return -ETIME;
 			}
 			d += signbits;
@@ -2140,8 +2139,7 @@ static int ni_ai_insn_read(struct comedi_device *dev,
 				}
 			}
 			if (i == NI_TIMEOUT) {
-				dev_err(dev->class_dev, "%s timeout\n",
-					__func__);
+				dev_err(dev->class_dev, "timeout\n");
 				return -ETIME;
 			}
 			data[n] = (((dl >> 16) & 0xFFFF) + signbits) & 0xFFFF;
@@ -2156,8 +2154,7 @@ static int ni_ai_insn_read(struct comedi_device *dev,
 					break;
 			}
 			if (i == NI_TIMEOUT) {
-				dev_err(dev->class_dev, "%s timeout\n",
-					__func__);
+				dev_err(dev->class_dev, "timeout\n");
 				return -ETIME;
 			}
 			if (devpriv->is_m_series) {
@@ -2808,8 +2805,7 @@ static int ni_m_series_ao_config_chanlist(struct comedi_device *dev,
 			break;
 		default:
 			dev_err(dev->class_dev,
-				"%s: bug! unhandled ao reference voltage\n",
-				__func__);
+				"bug! unhandled ao reference voltage\n");
 			break;
 		}
 		switch (krange->max + krange->min) {
@@ -2821,8 +2817,7 @@ static int ni_m_series_ao_config_chanlist(struct comedi_device *dev,
 			break;
 		default:
 			dev_err(dev->class_dev,
-				"%s: bug! unhandled ao offset voltage\n",
-				__func__);
+				"bug! unhandled ao offset voltage\n");
 			break;
 		}
 		if (timed)
@@ -3694,8 +3689,7 @@ static int ni_serial_hw_readwrite8(struct comedi_device *dev,
 		udelay((devpriv->serial_interval_ns + 999) / 1000);
 		if (--count < 0) {
 			dev_err(dev->class_dev,
-				"%s: SPI serial I/O didn't finish in time!\n",
-				__func__);
+				"SPI serial I/O didn't finish in time!\n");
 			err = -ETIME;
 			goto Error;
 		}
@@ -3833,8 +3827,7 @@ static int ni_serial_insn_config(struct comedi_device *dev,
 			err = ni_serial_sw_readwrite8(dev, s, byte_out,
 						      &byte_in);
 		} else {
-			dev_err(dev->class_dev, "%s: serial disabled!\n",
-				__func__);
+			dev_err(dev->class_dev, "serial disabled!\n");
 			return -EINVAL;
 		}
 		if (err < 0)
@@ -4520,8 +4513,7 @@ static unsigned ni_old_get_pfi_routing(struct comedi_device *dev,
 	case 9:
 		return NI_PFI_OUTPUT_G_GATE0;
 	default:
-		dev_err(dev->class_dev,
-			"%s: bug, unhandled case in switch.\n", __func__);
+		dev_err(dev->class_dev, "bug, unhandled case in switch.\n");
 		break;
 	}
 	return 0;
@@ -4673,7 +4665,7 @@ static int cs5529_wait_for_idle(struct comedi_device *dev)
 			return -EIO;
 	}
 	if (i == timeout) {
-		dev_err(dev->class_dev, "%s timeout\n", __func__);
+		dev_err(dev->class_dev, "timeout\n");
 		return -ETIME;
 	}
 	return 0;
@@ -4908,7 +4900,7 @@ static int ni_mseries_set_pll_master_clock(struct comedi_device *dev,
 					       &devpriv->clock_ns);
 	if (retval < 0) {
 		dev_err(dev->class_dev,
-			"%s: bug, failed to find pll parameters\n", __func__);
+			"bug, failed to find pll parameters\n");
 		return retval;
 	}
 
@@ -4966,8 +4958,7 @@ static int ni_set_master_clock(struct comedi_device *dev,
 					      RTSI_Trig_Direction_Register);
 				if (period_ns == 0) {
 					dev_err(dev->class_dev,
-						"%s: we don't handle an unspecified clock period correctly yet, returning error\n",
-						__func__);
+						"we don't handle an unspecified clock period correctly yet, returning error\n");
 					return -EINVAL;
 				}
 				devpriv->clock_ns = period_ns;
@@ -5057,8 +5048,7 @@ static unsigned ni_get_rtsi_routing(struct comedi_device *dev, unsigned chan)
 	} else {
 		if (chan == old_RTSI_clock_channel)
 			return NI_RTSI_OUTPUT_RTSI_OSC;
-		dev_err(dev->class_dev, "%s: bug! should never get here?\n",
-			__func__);
+		dev_err(dev->class_dev, "bug! should never get here?\n");
 		return 0;
 	}
 }
-- 
1.9.1


