X-GM-THRID: 6609326471053836288
X-Received: by 2002:a19:1285:: with SMTP id 5-v6mr614647lfs.11.1539000413815;
        Mon, 08 Oct 2018 05:06:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:2d1e:: with SMTP id k30-v6ls8326lfj.71.gmail; Mon, 08
 Oct 2018 05:06:52 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62dXOo1GKK+SXZGRI6naEgjDzutE/NSLrvfe2vc+vJZ/ZzbUJS6Jopd3+JZg8oldR0ybP+k
X-Received: by 2002:a19:535b:: with SMTP id h88-v6mr630442lfb.17.1539000412840;
        Mon, 08 Oct 2018 05:06:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539000412; cv=none;
        d=google.com; s=arc-20160816;
        b=xV1O4TvWPRVGep07yduZrHCO0CkTp90wdY06NKwitUit0y4LGsH4vM8m6fZYj1cw/m
         x+el6LFvmC7Zqkh66hPMcAJELzf+ZFSwa1sAcLztsUe4JPuhQGQEOstqJJpI1YbH5qfN
         9/2VTkc7JiOm0CzC3SuXCNHenR3dZ53+QpUud7miV4Z+KNxYJ5AyiMTTk7Rjzlcn7rco
         sD7NSehYHALuR4TL28VOdTDJi9lTh6tumkgUzGup9ItdbAUZnWrSJEGliNb+N4ig6/fI
         6cq9oQYO682QWzWY3OOiPjVfGLkFkm57CEehVzKq1XhdPT/HMs2dsyx+a/Z0wbSvMDCd
         tScg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=p4FT5E2sCBvinfPrAT966+v95TtAZJAQIPQYOPSL49I=;
        b=PBiJr5BCOMtoRDgtjhfEJBrBPiI24ZqCJqPRBfxIRVZIrN/ZYRa7GJpV/Vkx0wYOHp
         G1Vi3t6zoD4Xz7b8mufn1WHtFocbtGpOPxZDLFkwiYOjnweW2NEyVg1B+IeRtCu+PRIh
         ccC/aNYdmGiumjyppH0EQrCKwpHsNlT3avdl080gehEIuSdQ9zcknfba95DC60M5skIE
         sqSARQkEvadMMXK6stDqe/oG/BQ863RFjdaB0RVfoimaQRAicCsVbTLPY7kKogIieJ+e
         SZCAQrUQqoole9nY2Lo93WETIMW/ScpJvzD4X5YIHlAPZ6CCgqGUVPsRUc4T41Wx96yy
         7gxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pDsRqC17;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id y66-v6si579894lje.0.2018.10.08.05.06.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Oct 2018 05:06:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pDsRqC17;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id y16so20545430wrw.3
        for <outreachy-kernel@googlegroups.com>; Mon, 08 Oct 2018 05:06:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=p4FT5E2sCBvinfPrAT966+v95TtAZJAQIPQYOPSL49I=;
        b=pDsRqC17fMg82mrvq2FqGqfzD6ruWKeheaoKxPSSk6wItDcpU+aQ+2IhNKZuaKMyqt
         HA/L8LY5+/JialE2uqN4P1BsQuSuyOVTg5BGjpV2l3fME/N5K7dYVYTwlFQPZStGBVqr
         a8stpQCxxIX8MEHKmhj3YPyZ61aPUEjAn1IbQxeK1pmC9ofiyAOc+9fb0CRLs+xdoEOa
         qbgjwhJ6vZrLsmOlg8rqP52UWLIXdTXPQSAXm1/mzHXMtzokJ3HX7B8URCusPPvX6P3F
         EAj5OmdqkjzFTb2tEFYZvc0woiICM87ZtzVw9dn44HXi5l6deN5uXLZw6s7yfDjGLhdK
         0duA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=p4FT5E2sCBvinfPrAT966+v95TtAZJAQIPQYOPSL49I=;
        b=ajaJMILIvD943yWCk6nF2s4KjUh2XHtfkUZ+pWWEQGAlCVBiA3m/eMElDDDSVPdN9W
         hgBpaRf5AT8Xa9UQ/koPQUoBQnWrG83xzfcXyfmMMdLoYfeVL2a9UsAokRj+8DX7YsN5
         FFcWpeArpXS52I0ezEY49/d5dHZ+m94lJBhJQ/SeHfgXYD6yjvPHOaXE5223fBnZuD+H
         Ru/hAfj+VKsyGQCUE14QeUuKzkNhN2RCh6+kOL1AmbEBzWfJ+IcvsvUCYjAX4r/JN1C6
         7NMoikqu3lOo4LXf0Y8+IOjVWt7ksX+TrJqAL5QIPiXjaN6ekh42Zjlbx2Gv5LJVNwq4
         1k2w==
X-Gm-Message-State: ABuFfogaJqbwaGxixdXVBXlEUlgf6dMF0hCirJsiPBzNgd+RFzMlBC25
	B7x+cE1Z3esuC8rv900R52zHF+o8dCPptQ==
X-Received: by 2002:adf:ac4a:: with SMTP id v68-v6mr17164806wrc.165.1539000412076;
        Mon, 08 Oct 2018 05:06:52 -0700 (PDT)
Return-Path: <dafna3@gmail.com>
Received: from vdoo.wework.com ([82.166.68.50])
        by smtp.gmail.com with ESMTPSA id w4-v6sm37788552wra.83.2018.10.08.05.06.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Oct 2018 05:06:51 -0700 (PDT)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: isely@pobox.com,
	mchehab@kernel.org,
	helen.koike@collabora.com,
	hverkuil@xs4all.nl
Cc: outreachy-kernel@googlegroups.com,
	dafna3@gmail.com,
	Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [PATCH vicodec] media: pvrusb2: replace `printk` with `pr_*`
Date: Mon,  8 Oct 2018 15:06:47 +0300
Message-Id: <20181008120647.10271-1-dafna3@gmail.com>
X-Mailer: git-send-email 2.17.1

Replace calls to `printk` with the appropriate `pr_*`
macro.

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
 drivers/media/usb/pvrusb2/pvrusb2-debug.h    |  2 +-
 drivers/media/usb/pvrusb2/pvrusb2-hdw.c      |  8 +++---
 drivers/media/usb/pvrusb2/pvrusb2-i2c-core.c | 28 +++++++++-----------
 drivers/media/usb/pvrusb2/pvrusb2-main.c     |  4 +--
 drivers/media/usb/pvrusb2/pvrusb2-v4l2.c     |  4 +--
 5 files changed, 22 insertions(+), 24 deletions(-)

diff --git a/drivers/media/usb/pvrusb2/pvrusb2-debug.h b/drivers/media/usb/pvrusb2/pvrusb2-debug.h
index 5cd16292e2fa..1323f949f454 100644
--- a/drivers/media/usb/pvrusb2/pvrusb2-debug.h
+++ b/drivers/media/usb/pvrusb2/pvrusb2-debug.h
@@ -17,7 +17,7 @@
 
 extern int pvrusb2_debug;
 
-#define pvr2_trace(msk, fmt, arg...) do {if(msk & pvrusb2_debug) printk(KERN_INFO "pvrusb2: " fmt "\n", ##arg); } while (0)
+#define pvr2_trace(msk, fmt, arg...) do {if (msk & pvrusb2_debug) pr_info("pvrusb2: " fmt "\n", ##arg); } while (0)
 
 /* These are listed in *rough* order of decreasing usefulness and
    increasing noise level. */
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
index ec7d32759e39..8f023085c2d9 100644
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
@@ -487,22 +486,21 @@ static int pvr2_i2c_xfer(struct i2c_adapter *i2c_adap,
 				"read" : "write"));
 			if ((ret > 0) || !(msgs[idx].flags & I2C_M_RD)) {
 				if (cnt > 8) cnt = 8;
-				printk(KERN_CONT " [");
+				pr_cont(" [");
 				for (offs = 0; offs < cnt; offs++) {
-					if (offs) printk(KERN_CONT " ");
-					printk(KERN_CONT "%02x",msgs[idx].buf[offs]);
+					if (offs) pr_cont(" ");
+					pr_cont("%02x", msgs[idx].buf[offs]);
 				}
-				if (offs < cnt) printk(KERN_CONT " ...");
-				printk(KERN_CONT "]");
+				if (offs < cnt) pr_cont(" ...");
+				pr_cont("]");
 			}
 			if (idx+1 == num) {
-				printk(KERN_CONT " result=%d",ret);
+				pr_cont(" result=%d", ret);
 			}
-			printk(KERN_CONT "\n");
+			pr_cont("\n");
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


