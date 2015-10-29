X-GM-THRID: 6211053698454388736
X-Received: by 10.182.89.161 with SMTP id bp1mr1207785obb.45.1446123633155;
        Thu, 29 Oct 2015 06:00:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.107.202 with SMTP id h68ls412235qgf.63.gmail; Thu, 29 Oct
 2015 06:00:32 -0700 (PDT)
X-Received: by 10.140.157.196 with SMTP id d187mr679936qhd.11.1446123632688;
        Thu, 29 Oct 2015 06:00:32 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id iz5si115475pbc.2.2015.10.29.06.00.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 06:00:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=amarjargal.gundjalam@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id hy1so34681303pad.0
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 06:00:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=5bXk68LMGQoqQY1GVflzykXxa7XEgtm28g9lSp0kZzE=;
        b=IibzUYYzqOKh1hbgFb/jOnMai7l4TiWV3Cp5ATdU/USX4nHYFoSKidjsrfYJYMMGgO
         eWXKpUJvPkJI38O/RpqVHkBN/0AXQTgDgk0l8xSv1Bv3UUwhpgg5T9LlSrOyJEenquuk
         I9hqK5KLA2uWXFHTZ6h2SJU0zbKCgCbJ4JpYKz9tFJIryGvMN962JhJ9xknhiLAH96Kc
         +EsyEzhd7+zSXypl7/9jOToPo0qA66OzrLdHmDYhBNX7Cp9F+/cxDK5ikE3toqwHuqRV
         TZCR0Yqewb7n5IijdLdY/01QjdNCEqoA95oNGlryMYE2kO6/9+SK4oArwWMT/gIz246w
         N43g==
X-Received: by 10.66.218.129 with SMTP id pg1mr1827552pac.156.1446123632545;
        Thu, 29 Oct 2015 06:00:32 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from localhost.localdomain ([103.26.195.49])
        by smtp.googlemail.com with ESMTPSA id pj10sm2342164pbc.59.2015.10.29.06.00.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 06:00:32 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/6] staging: media: bcm2048: add space around operators
Date: Thu, 29 Oct 2015 06:00:13 -0700
Message-Id: <ba67942e2fa8959e68a74754b6657ce7d13517b6.1446123178.git.amarjargal.gundjalam@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>
References: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>
In-Reply-To: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>
References: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>

This patch fixes the checkpatch issue:

CHECK: spaces preferred around that ' '

Signed-off-by: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
---
 drivers/staging/media/bcm2048/radio-bcm2048.c |   81 +++++++++++++------------
 1 file changed, 43 insertions(+), 38 deletions(-)

diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
index 4948122..c8da22b 100644
--- a/drivers/staging/media/bcm2048/radio-bcm2048.c
+++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
@@ -1362,7 +1362,7 @@ static int bcm2048_checkrev(struct bcm2048_device *bdev)
 static int bcm2048_get_rds_rt(struct bcm2048_device *bdev, char *data)
 {
 	int err = 0, i, j = 0, ce = 0, cr = 0;
-	char data_buffer[BCM2048_MAX_RDS_RT+1];
+	char data_buffer[BCM2048_MAX_RDS_RT + 1];
 
 	mutex_lock(&bdev->mutex);
 
@@ -1412,7 +1412,7 @@ unlock:
 static int bcm2048_get_rds_ps(struct bcm2048_device *bdev, char *data)
 {
 	int err = 0, i, j = 0;
-	char data_buffer[BCM2048_MAX_RDS_PS+1];
+	char data_buffer[BCM2048_MAX_RDS_PS + 1];
 
 	mutex_lock(&bdev->mutex);
 
@@ -1452,8 +1452,8 @@ static void bcm2048_parse_rds_pi(struct bcm2048_device *bdev)
 		/* Block A match, only data without crc errors taken */
 		if (bdev->rds_info.radio_text[i] == BCM2048_RDS_BLOCK_A) {
 
-			pi = (bdev->rds_info.radio_text[i+1] << 8) +
-				bdev->rds_info.radio_text[i+2];
+			pi = (bdev->rds_info.radio_text[i + 1] << 8) +
+				bdev->rds_info.radio_text[i + 2];
 
 			if (!bdev->rds_info.rds_pi) {
 				bdev->rds_info.rds_pi = pi;
@@ -1484,14 +1484,15 @@ static void bcm2048_parse_rds_rt_block(struct bcm2048_device *bdev, int i,
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
 
@@ -1507,11 +1508,11 @@ static int bcm2048_parse_rt_match_b(struct bcm2048_device *bdev, int i)
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
@@ -1528,7 +1529,7 @@ static int bcm2048_parse_rt_match_b(struct bcm2048_device *bdev, int i)
 				bdev->rds_info.rds_rt_ab = rt_ab;
 			}
 
-			index = bdev->rds_info.radio_text[i+2] &
+			index = bdev->rds_info.radio_text[i + 2] &
 					BCM2048_RDS_RT_INDEX;
 
 			if (bdev->rds_info.rds_rt_group_b)
@@ -1580,7 +1581,7 @@ static void bcm2048_parse_rt_match_d(struct bcm2048_device *bdev, int i,
 
 	if ((bdev->rds_info.radio_text[i] & BCM2048_RDS_BLOCK_MASK) ==
 		BCM2048_RDS_BLOCK_D)
-		bcm2048_parse_rds_rt_block(bdev, i, index+2, crc);
+		bcm2048_parse_rds_rt_block(bdev, i, index + 2, crc);
 }
 
 static void bcm2048_parse_rds_rt(struct bcm2048_device *bdev)
@@ -1613,8 +1614,8 @@ static void bcm2048_parse_rds_rt(struct bcm2048_device *bdev)
 			if (crc == BCM2048_RDS_CRC_UNRECOVARABLE)
 				continue;
 			/* Syncronize to a good RDS PI */
-			if (((bdev->rds_info.radio_text[i+1] << 8) +
-				bdev->rds_info.radio_text[i+2]) ==
+			if (((bdev->rds_info.radio_text[i + 1] << 8) +
+				bdev->rds_info.radio_text[i + 2]) ==
 				bdev->rds_info.rds_pi)
 				match_b = 1;
 		}
@@ -1628,14 +1629,15 @@ static void bcm2048_parse_rds_ps_block(struct bcm2048_device *bdev, int i,
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
 
@@ -1683,9 +1685,9 @@ static int bcm2048_parse_ps_match_b(struct bcm2048_device *bdev, int i)
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
@@ -1709,7 +1711,7 @@ static int bcm2048_parse_ps_match_b(struct bcm2048_device *bdev, int i)
 		}
 
 		if (ps_id == BCM2048_RDS_PS) {
-			index = bdev->rds_info.radio_text[i+2] &
+			index = bdev->rds_info.radio_text[i + 2] &
 				BCM2048_RDS_PS_INDEX;
 			index <<= 1;
 			return index;
@@ -1749,8 +1751,8 @@ static void bcm2048_parse_rds_ps(struct bcm2048_device *bdev)
 			if (crc == BCM2048_RDS_CRC_UNRECOVARABLE)
 				continue;
 			/* Syncronize to a good RDS PI */
-			if (((bdev->rds_info.radio_text[i+1] << 8) +
-				bdev->rds_info.radio_text[i+2]) ==
+			if (((bdev->rds_info.radio_text[i + 1] << 8) +
+				bdev->rds_info.radio_text[i + 2]) ==
 				bdev->rds_info.rds_pi)
 				match_b = 1;
 		}
@@ -1801,7 +1803,7 @@ static int bcm2048_get_rds_data(struct bcm2048_device *bdev, char *data)
 	}
 
 	for (i = 0; i < bdev->rds_info.text_len; i++) {
-		p += sprintf(data_buffer+p, "%x ",
+		p += sprintf(data_buffer + p, "%x ",
 			bdev->rds_info.radio_text[i]);
 	}
 
@@ -2074,7 +2076,7 @@ property_str_read(rds_rt, (BCM2048_MAX_RDS_RT + 1))
 property_str_read(rds_ps, (BCM2048_MAX_RDS_PS + 1))
 
 property_read(fm_rds_flags, unsigned int, "%u")
-property_str_read(rds_data, BCM2048_MAX_RDS_RADIO_TEXT*5)
+property_str_read(rds_data, BCM2048_MAX_RDS_RADIO_TEXT * 5)
 
 property_read(region_bottom_frequency, unsigned int, "%u")
 property_read(region_top_frequency, unsigned int, "%u")
@@ -2245,13 +2247,16 @@ static ssize_t bcm2048_fops_read(struct file *file, char __user *buf,
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


