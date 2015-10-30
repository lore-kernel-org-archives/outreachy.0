X-GM-THRID: 6211053698454388736
X-Received: by 10.182.79.70 with SMTP id h6mr8122316obx.22.1446236482416;
        Fri, 30 Oct 2015 13:21:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.88.50 with SMTP id s47ls1322723qgd.75.gmail; Fri, 30 Oct
 2015 13:21:21 -0700 (PDT)
X-Received: by 10.31.153.195 with SMTP id b186mr7814571vke.5.1446236481856;
        Fri, 30 Oct 2015 13:21:21 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id el2si929624pbb.0.2015.10.30.13.21.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 13:21:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=amarjargal.gundjalam@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id hk11so83664717pad.1
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 13:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=xwm1cumqA/fpoXs4gu4O8Gl9wGuehri9IVZkZoSmKqI=;
        b=OE7U5TfkmFZsQU7m7vF+o9N3aKIk1RfYeutVXhIYQfm9eilU+Va8Lbn8B+UhwXfzsE
         WYDVG/FgbInUR2/KGrgFEi9ujEHjQza6v++8AA8AliMxD/e8hiG69HHqHQDkmYNhxJKt
         rXGXypNoew2WPPSd7Ba7oP76lHhXyuySxyq87mrkzeA2FUqrAxvHJ24bIT/lKwEXg4yp
         GjgFQaZl4Gg6ttKJKYpdRUgzaZrlNX5EzALH6aQh0I3tPE0Ku4njsG6Hj2JkOoQk6x++
         exYO13zWcHTCIuWucwloK1we8iVt3CEjcrMWAUO01wg26Vum2y1aKR8nEM+xFNahA8FK
         POhQ==
X-Received: by 10.66.90.165 with SMTP id bx5mr10871142pab.87.1446236481722;
        Fri, 30 Oct 2015 13:21:21 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from localhost.localdomain ([103.26.195.49])
        by smtp.googlemail.com with ESMTPSA id pn8sm9812012pbb.16.2015.10.30.13.21.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 13:21:21 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/5] staging: media: bcm2048: add space around operators
Date: Fri, 30 Oct 2015 13:21:04 -0700
Message-Id: <84ed4274a56bc2714e3aefafa7ddbc618af0a49a.1446235583.git.amarjargal.gundjalam@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1446235582.git.amarjargal.gundjalam@gmail.com>
References: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>
 <cover.1446235582.git.amarjargal.gundjalam@gmail.com>
In-Reply-To: <cover.1446235582.git.amarjargal.gundjalam@gmail.com>
References: <cover.1446235582.git.amarjargal.gundjalam@gmail.com>

This patch fixes the checkpatch issue:

CHECK: spaces preferred around that ' '

Signed-off-by: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
---
 drivers/staging/media/bcm2048/radio-bcm2048.c |   73 +++++++++++++------------
 1 file changed, 39 insertions(+), 34 deletions(-)

diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
index 46e7590..e65c83c 100644
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


