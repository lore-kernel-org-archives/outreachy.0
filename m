X-GM-THRID: 6211053698454388736
X-Received: by 10.68.195.197 with SMTP id ig5mr1236799pbc.4.1446123638118;
        Thu, 29 Oct 2015 06:00:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.104.34 with SMTP id gb2ls100685obb.18.gmail; Thu, 29 Oct
 2015 06:00:36 -0700 (PDT)
X-Received: by 10.182.65.67 with SMTP id v3mr1254308obs.38.1446123636970;
        Thu, 29 Oct 2015 06:00:36 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id pe1si134145pac.2.2015.10.29.06.00.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 06:00:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=amarjargal.gundjalam@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id hk11so40603660pad.1
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 06:00:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=a7JaTfoW3+rGgsWvFaAZ1/4D5TEAbqK/01NTUZf4Tl4=;
        b=gT838VvJKolpNKAkrffiEswIo0jRsWCfCab5MNEjUXW5eq15fIyRXQ/3RMxbaoWadf
         j1l2NVnNup1jcFIZZmII+Et2efdnD0cRh3B4g+4QbPec5w6N4X7iH6wVpTyV3a9Brt9E
         QOcZmxxakhKMPu/o8cAFvmsdxkxNzGucuPmYmtWW+4wYjL4SAJ11FgYCNG5rkVLkDUjQ
         Vpn40P1/+oxOzISgZ2uw2PqSjQFAawgWIJXRC4cfB0AYeFTI3kPxpFHpaTlQoaOi/nNf
         ejuwzoDrEJQ4VLEW3LpOAuQ0CTvK5oq7w98T66Jq2QYg3CTI8lb8ie6A33O2ePY7lRVO
         Su7Q==
X-Received: by 10.66.248.69 with SMTP id yk5mr1876944pac.32.1446123636852;
        Thu, 29 Oct 2015 06:00:36 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from localhost.localdomain ([103.26.195.49])
        by smtp.googlemail.com with ESMTPSA id pj10sm2342164pbc.59.2015.10.29.06.00.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 06:00:36 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/6] staging: media: bcm2048: remove unnecessary blank lines
Date: Thu, 29 Oct 2015 06:00:15 -0700
Message-Id: <31445a32ea8fcaab9673067d8dfef915597c558a.1446123178.git.amarjargal.gundjalam@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>
References: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>
In-Reply-To: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>
References: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>

This patch fixes the checkpatch issues:

CHECK: Please don't use multiple blank lines
CHECK: Blank lines aren't necessary after an open brace '{'

Signed-off-by: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
---
 drivers/staging/media/bcm2048/radio-bcm2048.c |    8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
index 70e424c..30973cd 100644
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


