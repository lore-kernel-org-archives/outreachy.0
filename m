X-GM-THRID: 6211053698454388736
X-Received: by 10.66.147.33 with SMTP id th1mr9490745pab.27.1446281820497;
        Sat, 31 Oct 2015 01:57:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.56.134 with SMTP id a6ls530456obq.86.gmail; Sat, 31 Oct
 2015 01:57:00 -0700 (PDT)
X-Received: by 10.182.107.162 with SMTP id hd2mr10176838obb.29.1446281820181;
        Sat, 31 Oct 2015 01:57:00 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id vy6si1111896pbc.1.2015.10.31.01.57.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 01:57:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=amarjargal.gundjalam@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id z6so96661961pas.2
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 01:57:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=zbC/iX8x+feZkOQC9WYw+1RCcIvtQl/2qEKA7cIZLSY=;
        b=nf3+k+H2tfu80dWoZxMPjdplwwLwfVZTsPTJX8vFdvg/QUEaauP8yPaIkfCGGdhLeJ
         K3JpasZich1KPwfvQkwHKC0eKDzmkssP2Tw1wZoOZcq4q9R9+F/KC8YBoGweTj/4Rlpp
         hp5Ae8bY6x2KBcl5sY6GwdLSAPJ7ZSWi7uP3/hN16Uz5tuUw+QWc1/B3/08yhFpzp/cW
         VwqeZxwd1gGQPJAaFbxd15XjB+zmSmVSg4uR6huEc4nKVs76iiAqMjOIPhq+vKGU1KTF
         NDIFl+mQMczyE/q3vx7xGsxRYROTboxrJj+PbFeNOgL7NBuhgy/0EiMtjpcHrzg3+l8P
         RVkQ==
X-Received: by 10.66.248.137 with SMTP id ym9mr14045964pac.157.1446281820070;
        Sat, 31 Oct 2015 01:57:00 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from localhost.localdomain ([103.26.195.49])
        by smtp.googlemail.com with ESMTPSA id yp9sm12645749pab.1.2015.10.31.01.56.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 01:56:59 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 3/5] staging: media: bcm2048: remove unnecessary blank lines
Date: Sat, 31 Oct 2015 01:56:39 -0700
Message-Id: <ee99d756d103b994ed502435463dc53f3f8d45cf.1446281119.git.amarjargal.gundjalam@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1446281119.git.amarjargal.gundjalam@gmail.com>
References: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>
 <cover.1446281119.git.amarjargal.gundjalam@gmail.com>
In-Reply-To: <cover.1446281119.git.amarjargal.gundjalam@gmail.com>
References: <cover.1446281119.git.amarjargal.gundjalam@gmail.com>

This patch fixes the checkpatch issues:

CHECK: Please don't use multiple blank lines
CHECK: Blank lines aren't necessary after an open brace '{'

Signed-off-by: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
---
 drivers/staging/media/bcm2048/radio-bcm2048.c |    8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
index 6c4379f..f8578fb 100644
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
 
@@ -1495,7 +1492,6 @@ static int bcm2048_parse_rt_match_b(struct bcm2048_device *bdev, int i)
 
 	if ((bdev->rds_info.radio_text[i] & BCM2048_RDS_BLOCK_MASK) ==
 	    BCM2048_RDS_BLOCK_B) {
-
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


