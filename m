X-GM-THRID: 6211053698454388736
X-Received: by 10.182.18.66 with SMTP id u2mr9463128obd.1.1446281819114;
        Sat, 31 Oct 2015 01:56:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.22.19 with SMTP id 19ls1370308qgm.67.gmail; Sat, 31 Oct
 2015 01:56:58 -0700 (PDT)
X-Received: by 10.31.54.198 with SMTP id d189mr9829379vka.6.1446281818528;
        Sat, 31 Oct 2015 01:56:58 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id vy6si1111896pbc.1.2015.10.31.01.56.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 01:56:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=amarjargal.gundjalam@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id z6so96661961pas.2
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 01:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=j3US5+JuI+6Qlmr/UYd3/Nhn8ayf7XCw1HgzEMB/7Hc=;
        b=KpwyF0N4Cvx+7X543yLH5RmxEPoM+tE2DxGHvGMV0cGYejq5xyW/4dz3uAoMos5P+i
         MJ5oR2LwV6rV16Rfgwp6VXPSk5c3FihDCupQAG/DVwP/VbkuprjKRvMynNF3lDU4JN1B
         C1VVNEVh0rXBCazDsw7DOv35GrUe+uB4Y9NQnsl+2tIXqGZ6M4K8Gqj8u0ba9ruslYnN
         ONXTG6kzSYrEvVoz5x1AmV3k7SD2iYE9Vsu7E5igKvES79L4XBE4WmK9Ga8DYSEEsE7q
         dPZdomKjom8IjyskPJp4GVKQ+Utf/RbIchiyOgW3VkeWA0sDax5KaDaJHSCK0UCcX/hm
         gDew==
X-Received: by 10.66.139.227 with SMTP id rb3mr8274977pab.64.1446281818364;
        Sat, 31 Oct 2015 01:56:58 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from localhost.localdomain ([103.26.195.49])
        by smtp.googlemail.com with ESMTPSA id yp9sm12645749pab.1.2015.10.31.01.56.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 01:56:57 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/5] staging: media: bcm2048: add space around operators
Date: Sat, 31 Oct 2015 01:56:38 -0700
Message-Id: <7a40da990eca94b570f2122bbfc96ab799bd1ec6.1446281119.git.amarjargal.gundjalam@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1446281119.git.amarjargal.gundjalam@gmail.com>
References: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>
 <cover.1446281119.git.amarjargal.gundjalam@gmail.com>
In-Reply-To: <cover.1446281119.git.amarjargal.gundjalam@gmail.com>
References: <cover.1446281119.git.amarjargal.gundjalam@gmail.com>

This patch fixes the checkpatch issue:

CHECK: spaces preferred around that ' '

Signed-off-by: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
---
 drivers/staging/media/bcm2048/radio-bcm2048.c |   73 +++++++++++++------------
 1 file changed, 39 insertions(+), 34 deletions(-)

diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
index fabd75a..6c4379f 100644
--- a/drivers/staging/media/bcm2048/radio-bcm2048.c
+++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
@@ -1350,7 +1350,7 @@ static int bcm2048_checkrev(struct bcm2048_device *bdev)
 static int bcm2048_get_rds_rt(struct bcm2048_device *bdev, char *data)
 {
 	int err = 0, i, j = 0, ce = 0, cr = 0;
-	char data_buffer[BCM2048_MAX_RDS_RT+1];
+	char data_buffer[BCM2048_MAX_RDS_RT + 1];
 
 	mutex_lock(&bdev->mutex);
 
@@ -1400,7 +1400,7 @@ unlock:
 static int bcm2048_get_rds_ps(struct bcm2048_device *bdev, char *data)
 {
 	int err = 0, i, j = 0;
-	char data_buffer[BCM2048_MAX_RDS_PS+1];
+	char data_buffer[BCM2048_MAX_RDS_PS + 1];
 
 	mutex_lock(&bdev->mutex);
 
@@ -1440,8 +1440,8 @@ static void bcm2048_parse_rds_pi(struct bcm2048_device *bdev)
 		/* Block A match, only data without crc errors taken */
 		if (bdev->rds_info.radio_text[i] == BCM2048_RDS_BLOCK_A) {
 
-			pi = (bdev->rds_info.radio_text[i+1] << 8) +
-				bdev->rds_info.radio_text[i+2];
+			pi = (bdev->rds_info.radio_text[i + 1] << 8) +
+				bdev->rds_info.radio_text[i + 2];
 
 			if (!bdev->rds_info.rds_pi) {
 				bdev->rds_info.rds_pi = pi;
@@ -1472,14 +1472,15 @@ static void bcm2048_parse_rds_rt_block(struct bcm2048_device *bdev, int i,
 	if (crc) {
 		if (!bdev->rds_info.rds_rt[index])
 			bdev->rds_info.rds_rt[index] =
-				bdev->rds_info.radio_text[i+1];
-		if (!bdev->rds_info.rds_rt[index+1])
-			bdev->rds_info.rds_rt[index+1] =
-				bdev->rds_info.radio_text[i+2];
+				bdev->rds_info.radio_text[i + 1];
+		if (!bdev->rds_info.rds_rt[index + 1])
+			bdev->rds_info.rds_rt[index + 1] =
+				bdev->rds_info.radio_text[i + 2];
 	} else {
-		bdev->rds_info.rds_rt[index] = bdev->rds_info.radio_text[i+1];
-		bdev->rds_info.rds_rt[index+1] =
-			bdev->rds_info.radio_text[i+2];
+		bdev->rds_info.rds_rt[index] =
+			bdev->rds_info.radio_text[i + 1];
+		bdev->rds_info.rds_rt[index + 1] =
+			bdev->rds_info.radio_text[i + 2];
 	}
 }
 
@@ -1495,11 +1496,11 @@ static int bcm2048_parse_rt_match_b(struct bcm2048_device *bdev, int i)
 	if ((bdev->rds_info.radio_text[i] & BCM2048_RDS_BLOCK_MASK) ==
 	    BCM2048_RDS_BLOCK_B) {
 
-		rt_id = bdev->rds_info.radio_text[i+1] &
+		rt_id = bdev->rds_info.radio_text[i + 1] &
 			BCM2048_RDS_BLOCK_MASK;
-		rt_group_b = bdev->rds_info.radio_text[i+1] &
+		rt_group_b = bdev->rds_info.radio_text[i + 1] &
 			BCM2048_RDS_GROUP_AB_MASK;
-		rt_ab = bdev->rds_info.radio_text[i+2] &
+		rt_ab = bdev->rds_info.radio_text[i + 2] &
 				BCM2048_RDS_RT_AB_MASK;
 
 		if (rt_group_b != bdev->rds_info.rds_rt_group_b) {
@@ -1516,7 +1517,7 @@ static int bcm2048_parse_rt_match_b(struct bcm2048_device *bdev, int i)
 				bdev->rds_info.rds_rt_ab = rt_ab;
 			}
 
-			index = bdev->rds_info.radio_text[i+2] &
+			index = bdev->rds_info.radio_text[i + 2] &
 					BCM2048_RDS_RT_INDEX;
 
 			if (bdev->rds_info.rds_rt_group_b)
@@ -1568,7 +1569,7 @@ static void bcm2048_parse_rt_match_d(struct bcm2048_device *bdev, int i,
 
 	if ((bdev->rds_info.radio_text[i] & BCM2048_RDS_BLOCK_MASK) ==
 	    BCM2048_RDS_BLOCK_D)
-		bcm2048_parse_rds_rt_block(bdev, i, index+2, crc);
+		bcm2048_parse_rds_rt_block(bdev, i, index + 2, crc);
 }
 
 static void bcm2048_parse_rds_rt(struct bcm2048_device *bdev)
@@ -1616,14 +1617,15 @@ static void bcm2048_parse_rds_ps_block(struct bcm2048_device *bdev, int i,
 	if (crc) {
 		if (!bdev->rds_info.rds_ps[index])
 			bdev->rds_info.rds_ps[index] =
-				bdev->rds_info.radio_text[i+1];
-		if (!bdev->rds_info.rds_ps[index+1])
-			bdev->rds_info.rds_ps[index+1] =
-				bdev->rds_info.radio_text[i+2];
+				bdev->rds_info.radio_text[i + 1];
+		if (!bdev->rds_info.rds_ps[index + 1])
+			bdev->rds_info.rds_ps[index + 1] =
+				bdev->rds_info.radio_text[i + 2];
 	} else {
-		bdev->rds_info.rds_ps[index] = bdev->rds_info.radio_text[i+1];
-		bdev->rds_info.rds_ps[index+1] =
-			bdev->rds_info.radio_text[i+2];
+		bdev->rds_info.rds_ps[index] =
+			bdev->rds_info.radio_text[i + 1];
+		bdev->rds_info.rds_ps[index + 1] =
+			bdev->rds_info.radio_text[i + 2];
 	}
 }
 
@@ -1671,9 +1673,9 @@ static int bcm2048_parse_ps_match_b(struct bcm2048_device *bdev, int i)
 	/* Block B Radio PS match */
 	if ((bdev->rds_info.radio_text[i] & BCM2048_RDS_BLOCK_MASK) ==
 	    BCM2048_RDS_BLOCK_B) {
-		ps_id = bdev->rds_info.radio_text[i+1] &
+		ps_id = bdev->rds_info.radio_text[i + 1] &
 			BCM2048_RDS_BLOCK_MASK;
-		ps_group = bdev->rds_info.radio_text[i+1] &
+		ps_group = bdev->rds_info.radio_text[i + 1] &
 			BCM2048_RDS_GROUP_AB_MASK;
 
 		/*
@@ -1697,7 +1699,7 @@ static int bcm2048_parse_ps_match_b(struct bcm2048_device *bdev, int i)
 		}
 
 		if (ps_id == BCM2048_RDS_PS) {
-			index = bdev->rds_info.radio_text[i+2] &
+			index = bdev->rds_info.radio_text[i + 2] &
 				BCM2048_RDS_PS_INDEX;
 			index <<= 1;
 			return index;
@@ -1789,7 +1791,7 @@ static int bcm2048_get_rds_data(struct bcm2048_device *bdev, char *data)
 	}
 
 	for (i = 0; i < bdev->rds_info.text_len; i++) {
-		p += sprintf(data_buffer+p, "%x ",
+		p += sprintf(data_buffer + p, "%x ",
 			     bdev->rds_info.radio_text[i]);
 	}
 
@@ -2062,7 +2064,7 @@ property_str_read(rds_rt, (BCM2048_MAX_RDS_RT + 1))
 property_str_read(rds_ps, (BCM2048_MAX_RDS_PS + 1))
 
 property_read(fm_rds_flags, unsigned int, "%u")
-property_str_read(rds_data, BCM2048_MAX_RDS_RADIO_TEXT*5)
+property_str_read(rds_data, BCM2048_MAX_RDS_RADIO_TEXT * 5)
 
 property_read(region_bottom_frequency, unsigned int, "%u")
 property_read(region_top_frequency, unsigned int, "%u")
@@ -2233,13 +2235,16 @@ static ssize_t bcm2048_fops_read(struct file *file, char __user *buf,
 	while (i < count) {
 		unsigned char tmpbuf[3];
 
-		tmpbuf[i] = bdev->rds_info.radio_text[bdev->rd_index+i+2];
-		tmpbuf[i+1] = bdev->rds_info.radio_text[bdev->rd_index+i+1];
-		tmpbuf[i+2] = (bdev->rds_info.radio_text[bdev->rd_index + i] & 0xf0) >> 4;
-		if ((bdev->rds_info.radio_text[bdev->rd_index+i] &
+		tmpbuf[i] = bdev->rds_info.radio_text[bdev->rd_index + i + 2];
+		tmpbuf[i + 1] =
+			bdev->rds_info.radio_text[bdev->rd_index + i + 1];
+		tmpbuf[i + 2] =
+			(bdev->rds_info.radio_text[bdev->rd_index + i] &
+			 0xf0) >> 4;
+		if ((bdev->rds_info.radio_text[bdev->rd_index + i] &
 		    BCM2048_RDS_CRC_MASK) == BCM2048_RDS_CRC_UNRECOVARABLE)
-			tmpbuf[i+2] |= 0x80;
-		if (copy_to_user(buf+i, tmpbuf, 3)) {
+			tmpbuf[i + 2] |= 0x80;
+		if (copy_to_user(buf + i, tmpbuf, 3)) {
 			retval = -EFAULT;
 			break;
 		}
-- 
1.7.9.5


