X-GM-THRID: 6609326471053836288
X-Received: by 2002:a2e:21e3:: with SMTP id h96-v6mr474713lji.43.1538853736137;
        Sat, 06 Oct 2018 12:22:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:d941:: with SMTP id q62-v6ls355920lfg.28.gmail; Sat, 06
 Oct 2018 12:22:15 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63BUGO6msjmQGCQRUEtg4aLJx79BSZi+sEJW2ScrOqlp7qtTiA6PI7ME2bxL4pauZLIL1Fo
X-Received: by 2002:a19:d202:: with SMTP id j2-v6mr453248lfg.27.1538853735262;
        Sat, 06 Oct 2018 12:22:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538853735; cv=none;
        d=google.com; s=arc-20160816;
        b=Xl8IGPxwKnGwbgEIvi9U1RJiQlzPzTK29wZxoiT45eSxKbILx4154TgEDdYjDfx+rh
         6SH8vjYm1MDS6zted3rNHwKVCeKRitYrRsa/uj2eixmS/+1v/SHt3t2gXQ3U6cgj0tGj
         ZoSD/S99+AP/+kNcupsAzwUr5i7MqYpS5vNBLmyD4mzj+yBkOeSL+D7Wa64muQsoyJHJ
         XPkc68fYg1aOv1sZHCKo7QSg01G2pKJ9UC9p+OAiw8V2BefQ+oiJrFuhIokXM0AZLgXv
         v9ECdET2W+kUeMYIqANhBEt+qCxpHSVBVH97fk5smXI3EvgLQbnTLaM10eAu6yeqDLuX
         hyjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=M1wUV4g26wpn+m3KmZeUboHe+b06w58FdInqGvsxZQA=;
        b=YhT/Vm/v5lhvDkKSanZRWHznPkA64cZOrxK4hV54y1+ORlcZhWYkZ5TznEisbN7b2N
         5/eXSnhBBbToOnnjy2ZH5PBce9KeoHerWq22oB2bfFIGu9Agv5J6lQTp/gWK1omR0tWU
         4vkxH/+qEcMYeZlACvWcT7EF32orb+nPokUIa1QYthQvbLCQMiwnWL9NwixB744/xaYc
         BAu2Ma+RS2f3X79biqNGAxiuXVsH09EA6B3B2+1WktpdRguP3u1B8ikYfnXe+i0K2SQl
         g0g/6WZpSp//sFYWOet5G8LNvpTukj1CJ0gDtu5c+HLx2zNglLU5DIQ6TVR9rzQewUQ6
         eW6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B+uwWRtM;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id y1-v6si412501lfd.3.2018.10.06.12.22.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 12:22:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B+uwWRtM;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id n1-v6so16703289wrt.10
        for <outreachy-kernel@googlegroups.com>; Sat, 06 Oct 2018 12:22:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=M1wUV4g26wpn+m3KmZeUboHe+b06w58FdInqGvsxZQA=;
        b=B+uwWRtMUSyfEHLBOfcqzktiBGAsve1T/SqLVahsKTc/S95gko+lQwBXAE9yFzzKE2
         4Rq1k97lg3KYbV74CHLNIynBkbn/u8uAQbJ7WyVm8Hhet6/OUaaWTeGpskLkNnXYXHNP
         cCi46LJ4p4P7SCXMroSNh1/oPv+kkH/qUD+HsJvi/8d9HC8StuOxRZmlk3nSpiAleFA2
         5syJeLdpGVskrBiaaWxpPZQW9Q3RXFJc5JhBqdKbSYnDTuQnPYLXRi6QornV6nnVOTVw
         Y8UpFddNFw7CGzOVktYE0hT+l4R08s7qcmzFtZWepzr0RTeda8G0EoC0TfohDEu1Eeg2
         pKJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=M1wUV4g26wpn+m3KmZeUboHe+b06w58FdInqGvsxZQA=;
        b=b3VTWqdpWIjUK3H2f63vsXYDQuLWShztkgkPlzfeXf8r3X0UuN67Iwoi8ZGBf1QN+q
         RIHrrtfOSdLtp9wrAKCFWCiF+H4qOc39ZbITeUs1YNbJaaMYF5d6urPvFkGgCogymRU3
         3O2oPqlb88Do35GKmLCcQ/LAEzihaTVAFe1o9HFA4YmNlGAd0jdQqms2/EHtaJcbDg42
         08ZYyy/5XApJ4tAqZdyOFBABhDPC7dsnVFxk3yxdG6hS8xAxfBrQjEkZLamJhFIr9VJM
         nmTBkWneWSykk1gO1GcCTYJJkAWLowXIUWF5B9YDI+Z3fz5yJ+RatlOQkUi2je8hbnaC
         TcQg==
X-Gm-Message-State: ABuFfohLrmA1UybCuUsABRg1amXl4e5y7I2ycXWHI9Hv8YKE5L1BhrgX
	BhQPOhE4r+n3OvtA1ViCcvfUtBwEEwyYKQ==
X-Received: by 2002:a5d:4208:: with SMTP id n8-v6mr11239425wrq.260.1538853734511;
        Sat, 06 Oct 2018 12:22:14 -0700 (PDT)
Return-Path: <dafna3@gmail.com>
Received: from vdoo.home ([77.124.52.185])
        by smtp.gmail.com with ESMTPSA id 77-v6sm12550077wmv.6.2018.10.06.12.22.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 12:22:13 -0700 (PDT)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: isely@pobox.com,
	mchehab@kernel.org,
	helen.koike@collabora.com,
	hverkuil@xs4all.nl
Cc: outreachy-kernel@googlegroups.com,
	dafna3@gmail.com,
	Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [PATCH vicodec] media: pvrusb2: replace `printk` with `pr_*`
Date: Sat,  6 Oct 2018 22:21:38 +0300
Message-Id: <20181006192138.11349-1-dafna3@gmail.com>
X-Mailer: git-send-email 2.17.1

Replace calls to `printk` with the appropriate `pr_*`
macro.

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
 drivers/media/usb/pvrusb2/pvrusb2-hdw.c      |  8 ++++----
 drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c | 14 ++++++--------
 drivers/media/usb/pvrusb2/pvrusb2-main.c     |  4 ++--
 drivers/media/usb/pvrusb2/pvrusb2-v4l2.c     |  4 ++--
 4 files changed, 14 insertions(+), 16 deletions(-)

diff --git a/drivers/media/usb/pvrusb2/pvrusb2-hdw.c b/drivers/media/usb/pvrusb2/pvrusb2-hdw.c
index a8519da0020b..7702285c1519 100644
--- a/drivers/media/usb/pvrusb2/pvrusb2-hdw.c
+++ b/drivers/media/usb/pvrusb2/pvrusb2-hdw.c
@@ -3293,12 +3293,12 @@ void pvr2_hdw_trigger_module_log(struct pvr2_hdw *hdw)
 	int nr = pvr2_hdw_get_unit_number(hdw);
 	LOCK_TAKE(hdw->big_lock);
 	do {
-		printk(KERN_INFO "pvrusb2: =================  START STATUS CARD #%d  =================\n", nr);
+		pr_info("pvrusb2: =================  START STATUS CARD #%d  =================\n", nr);
 		v4l2_device_call_all(&hdw->v4l2_dev, 0, core, log_status);
 		pvr2_trace(PVR2_TRACE_INFO,"cx2341x config:");
 		cx2341x_log_status(&hdw->enc_ctl_state, "pvrusb2");
 		pvr2_hdw_state_log_state(hdw);
-		printk(KERN_INFO "pvrusb2: ==================  END STATUS CARD #%d  ==================\n", nr);
+		pr_info("pvrusb2: ==================  END STATUS CARD #%d  ==================\n", nr);
 	} while (0);
 	LOCK_GIVE(hdw->big_lock);
 }
@@ -4851,7 +4851,7 @@ static void pvr2_hdw_state_log_state(struct pvr2_hdw *hdw)
 	for (idx = 0; ; idx++) {
 		ccnt = pvr2_hdw_report_unlocked(hdw,idx,buf,sizeof(buf));
 		if (!ccnt) break;
-		printk(KERN_INFO "%s %.*s\n",hdw->name,ccnt,buf);
+		pr_info("%s %.*s\n", hdw->name, ccnt, buf);
 	}
 	ccnt = pvr2_hdw_report_clients(hdw, buf, sizeof(buf));
 	if (ccnt >= sizeof(buf))
@@ -4863,7 +4863,7 @@ static void pvr2_hdw_state_log_state(struct pvr2_hdw *hdw)
 		while ((lcnt + ucnt < ccnt) && (buf[lcnt + ucnt] != '\n')) {
 			lcnt++;
 		}
-		printk(KERN_INFO "%s %.*s\n", hdw->name, lcnt, buf + ucnt);
+		pr_info("%s %.*s\n", hdw->name, lcnt, buf + ucnt);
 		ucnt += lcnt + 1;
 	}
 }
diff --git a/drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c b/drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c
index ec7d32759e39..06c7e875fa0f 100644
--- a/drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c
+++ b/drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c
@@ -478,8 +478,7 @@ static int pvr2_i2c_xfer(struct i2c_adapter *i2c_adap,
 		unsigned int idx,offs,cnt;
 		for (idx = 0; idx < num; idx++) {
 			cnt = msgs[idx].len;
-			printk(KERN_INFO
-			       "pvrusb2 i2c xfer %u/%u: addr=0x%x len=%d %s",
+			pr_info("pvrusb2 i2c xfer %u/%u: addr=0x%x len=%d %s",
 			       idx+1,num,
 			       msgs[idx].addr,
 			       cnt,
@@ -501,8 +500,7 @@ static int pvr2_i2c_xfer(struct i2c_adapter *i2c_adap,
 			printk(KERN_CONT "\n");
 		}
 		if (!num) {
-			printk(KERN_INFO
-			       "pvrusb2 i2c xfer null transfer result=%d\n",
+			pr_info("pvrusb2 i2c xfer null transfer result=%d\n",
 			       ret);
 		}
 	}
@@ -542,14 +540,14 @@ static int do_i2c_probe(struct pvr2_hdw *hdw, int addr)
 static void do_i2c_scan(struct pvr2_hdw *hdw)
 {
 	int i;
-	printk(KERN_INFO "%s: i2c scan beginning\n", hdw->name);
+	pr_info("%s: i2c scan beginning\n", hdw->name);
 	for (i = 0; i < 128; i++) {
 		if (do_i2c_probe(hdw, i)) {
-			printk(KERN_INFO "%s: i2c scan: found device @ 0x%x\n",
+			pr_info("%s: i2c scan: found device @ 0x%x\n",
 			       hdw->name, i);
 		}
 	}
-	printk(KERN_INFO "%s: i2c scan done.\n", hdw->name);
+	pr_info("%s: i2c scan done.\n", hdw->name);
 }
 
 static void pvr2_i2c_register_ir(struct pvr2_hdw *hdw)
@@ -612,7 +610,7 @@ void pvr2_i2c_core_init(struct pvr2_hdw *hdw)
 
 	/* However, deal with various special cases for 24xxx hardware. */
 	if (ir_mode[hdw->unit_number] == 0) {
-		printk(KERN_INFO "%s: IR disabled\n",hdw->name);
+		pr_info("%s: IR disabled\n", hdw->name);
 		hdw->i2c_func[0x18] = i2c_black_hole;
 	} else if (ir_mode[hdw->unit_number] == 1) {
 		if (hdw->ir_scheme_active == PVR2_IR_SCHEME_24XXX) {
diff --git a/drivers/media/usb/pvrusb2/pvrusb2-main.c b/drivers/media/usb/pvrusb2/pvrusb2-main.c
index cbe2c3a22458..23672dd352f5 100644
--- a/drivers/media/usb/pvrusb2/pvrusb2-main.c
+++ b/drivers/media/usb/pvrusb2/pvrusb2-main.c
@@ -132,10 +132,10 @@ static int __init pvr_init(void)
 	ret = usb_register(&pvr_driver);
 
 	if (ret == 0)
-		printk(KERN_INFO "pvrusb2: " DRIVER_VERSION ":"
+		pr_info("pvrusb2: " DRIVER_VERSION ":"
 		       DRIVER_DESC "\n");
 	if (pvrusb2_debug)
-		printk(KERN_INFO "pvrusb2: Debug mask is %d (0x%x)\n",
+		pr_info("pvrusb2: Debug mask is %d (0x%x)\n",
 		       pvrusb2_debug,pvrusb2_debug);
 
 	pvr2_trace(PVR2_TRACE_INIT,"pvr_init complete");
diff --git a/drivers/media/usb/pvrusb2/pvrusb2-v4l2.c b/drivers/media/usb/pvrusb2/pvrusb2-v4l2.c
index cea232a3302d..97a93ed4bcda 100644
--- a/drivers/media/usb/pvrusb2/pvrusb2-v4l2.c
+++ b/drivers/media/usb/pvrusb2/pvrusb2-v4l2.c
@@ -869,7 +869,7 @@ static void pvr2_v4l2_dev_destroy(struct pvr2_v4l2_dev *dip)
 	   are gone. */
 	video_unregister_device(&dip->devbase);
 
-	printk(KERN_INFO "%s\n", msg);
+	pr_info("%s\n", msg);
 
 }
 
@@ -1260,7 +1260,7 @@ static void pvr2_v4l2_dev_init(struct pvr2_v4l2_dev *dip,
 			": Failed to register pvrusb2 v4l device\n");
 	}
 
-	printk(KERN_INFO "pvrusb2: registered device %s [%s]\n",
+	pr_info("pvrusb2: registered device %s [%s]\n",
 	       video_device_node_name(&dip->devbase),
 	       pvr2_config_get_name(dip->config));
 
-- 
2.17.1


