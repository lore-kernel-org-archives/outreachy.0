X-GM-THRID: 6211053698454388736
X-Received: by 10.66.145.193 with SMTP id sw1mr7908246pab.21.1446236484108;
        Fri, 30 Oct 2015 13:21:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.89.138 with SMTP id v10ls1355691qgd.5.gmail; Fri, 30 Oct
 2015 13:21:23 -0700 (PDT)
X-Received: by 10.140.232.148 with SMTP id d142mr7878947qhc.4.1446236483626;
        Fri, 30 Oct 2015 13:21:23 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id el2si928836pbb.0.2015.10.30.13.21.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 13:21:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amarjargal.gundjalam@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id fv9so86907398pac.3
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 13:21:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=49C5wqO/PwKw2N0YXOTjjdACfMk5cPrOI6HLVnrhZBI=;
        b=G0ou+0MmQh2oTr7cabhkoubCwYJnPOnYKon/JW4Gz7FayVv3gmvn0feJnziLa+LZod
         gbPEOAYq+dSCK/4B6EGUuKoJmWVgI4QY/Rkqhio6dPX5ekCzDzOnmwhZKxxTVYqgM1Js
         vkjUB7DeBW+h90Rf/7ayQ1moRo45YCUcEcnsHIIdSQDWAOTXvcawDQZrjZ1YzBw+Ex9n
         91dFpvI2/Pp1ipmLJAw/RSEmEyfr6cZgLskGbXe8RFZvVyN2IZwSp0l1gSn+IrIhNiEf
         LHKt7DMtBpB7ajIvwwFHtdn4p6Ldo8ZAzC/rZD68RrT6ZWMQ+1vN8ZuPk1PZoSzunwwY
         /tQA==
X-Received: by 10.68.228.200 with SMTP id sk8mr10997642pbc.115.1446236483509;
        Fri, 30 Oct 2015 13:21:23 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from localhost.localdomain ([103.26.195.49])
        by smtp.googlemail.com with ESMTPSA id pn8sm9812012pbb.16.2015.10.30.13.21.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 13:21:23 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/5] staging: media: bcm2048: remove unnecessary blank lines
Date: Fri, 30 Oct 2015 13:21:05 -0700
Message-Id: <27b9f66c39d5cd3e32f01cc09acec7ddd0c33cca.1446235583.git.amarjargal.gundjalam@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1446235582.git.amarjargal.gundjalam@gmail.com>
References: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>
 <cover.1446235582.git.amarjargal.gundjalam@gmail.com>
In-Reply-To: <cover.1446235582.git.amarjargal.gundjalam@gmail.com>
References: <cover.1446235582.git.amarjargal.gundjalam@gmail.com>

This patch fixes the checkpatch issues:

CHECK: Please don't use multiple blank lines
CHECK: Blank lines aren't necessary after an open brace '{'

Signed-off-by: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
---
 drivers/staging/media/bcm2048/radio-bcm2048.c |   10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
index e65c83c..f8578fb 100644
--- a/drivers/staging/media/bcm2048/radio-bcm2048.c
+++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
@@ -179,7 +179,6 @@
 #define BCM2048_DEFAULT_TIMEOUT		1500
 #define BCM2048_AUTO_SEARCH_TIMEOUT	3000
 
-
 #define BCM2048_FREQDEV_UNIT		10000
 #define BCM2048_FREQV4L2_MULTI		625
 #define dev_to_v4l2(f)	((f * BCM2048_FREQDEV_UNIT) / BCM2048_FREQV4L2_MULTI)
@@ -1436,10 +1435,8 @@ static void bcm2048_parse_rds_pi(struct bcm2048_device *bdev)
 	u16 pi;
 
 	for (i = 0; i < bdev->fifo_size; i += BCM2048_RDS_FIFO_DUPLE_SIZE) {
-
 		/* Block A match, only data without crc errors taken */
 		if (bdev->rds_info.radio_text[i] == BCM2048_RDS_BLOCK_A) {
-
 			pi = (bdev->rds_info.radio_text[i + 1] << 8) +
 				bdev->rds_info.radio_text[i + 2];
 
@@ -1494,8 +1491,7 @@ static int bcm2048_parse_rt_match_b(struct bcm2048_device *bdev, int i)
 		return -EIO;
 
 	if ((bdev->rds_info.radio_text[i] & BCM2048_RDS_BLOCK_MASK) ==
-		BCM2048_RDS_BLOCK_B) {
-
+	    BCM2048_RDS_BLOCK_B) {
 		rt_id = bdev->rds_info.radio_text[i + 1] &
 			BCM2048_RDS_BLOCK_MASK;
 		rt_group_b = bdev->rds_info.radio_text[i + 1] &
@@ -1577,7 +1573,6 @@ static void bcm2048_parse_rds_rt(struct bcm2048_device *bdev)
 	int i, index = 0, crc, match_b = 0, match_c = 0, match_d = 0;
 
 	for (i = 0; i < bdev->fifo_size; i += BCM2048_RDS_FIFO_DUPLE_SIZE) {
-
 		if (match_b) {
 			match_b = 0;
 			index = bcm2048_parse_rt_match_b(bdev, i);
@@ -1714,7 +1709,6 @@ static void bcm2048_parse_rds_ps(struct bcm2048_device *bdev)
 	int i, index = 0, crc, match_b = 0, match_c = 0, match_d = 0;
 
 	for (i = 0; i < bdev->fifo_size; i += BCM2048_RDS_FIFO_DUPLE_SIZE) {
-
 		if (match_b) {
 			match_b = 0;
 			index = bcm2048_parse_ps_match_b(bdev, i);
@@ -1911,7 +1905,6 @@ static void bcm2048_work(struct work_struct *work)
 
 	if (flag_lsb & (BCM2048_FM_FLAG_SEARCH_TUNE_FINISHED |
 			BCM2048_FM_FLAG_SEARCH_TUNE_FAIL)) {
-
 		if (flag_lsb & BCM2048_FM_FLAG_SEARCH_TUNE_FAIL)
 			bdev->scan_state = BCM2048_SCAN_FAIL;
 		else
@@ -2165,7 +2158,6 @@ static int bcm2048_sysfs_register_properties(struct bcm2048_device *bdev)
 	return err;
 }
 
-
 static int bcm2048_fops_open(struct file *file)
 {
 	struct bcm2048_device *bdev = video_drvdata(file);
-- 
1.7.9.5


