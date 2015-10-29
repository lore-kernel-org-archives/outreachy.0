X-GM-THRID: 6211053698454388736
X-Received: by 10.182.181.3 with SMTP id ds3mr1237204obc.5.1446123636702;
        Thu, 29 Oct 2015 06:00:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.138.8 with SMTP id qm8ls227290igb.36.gmail; Thu, 29 Oct
 2015 06:00:36 -0700 (PDT)
X-Received: by 10.66.182.166 with SMTP id ef6mr1207407pac.42.1446123636163;
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
        bh=1ERQkAw+79V1I+gACEuijzxCYe+v85hXSeMELrbxaMY=;
        b=aP6fv66RUsJ+g6SWcS24wmEj/JH9Lkbj6B2RHnS7Rilyouhwje9vxpqpvpS8N4QPTY
         tMjlcLyI4iiHbNSb1jdaUpllrNLhhN6aUniGIHM0BePg7tHH/qgoGTyAS5bqmuP6YKoR
         ECCH6jpfyvdLyAtLIqdd9TsGEnPKqgiKZXuCANknMIQXXHOffyuL9VaUTzpgHVR1Vryz
         3V/oawpD4h/MPN7zyt3HrPKdOuUPE6TxHetfyPu8yqV4JLQyRAWQeqh7uNwOtKxYWkg2
         qn5QlWtnK0T70AfHxE58OWdKotK8l3aq3CrQvD6pmAH5n4Y3smFjegCBvEtKSJtFuDs2
         PD1g==
X-Received: by 10.68.139.2 with SMTP id qu2mr1772613pbb.135.1446123634893;
        Thu, 29 Oct 2015 06:00:34 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from localhost.localdomain ([103.26.195.49])
        by smtp.googlemail.com with ESMTPSA id pj10sm2342164pbc.59.2015.10.29.06.00.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 06:00:34 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/6] staging: media: bcm2048: match alignments with open parenthesis
Date: Thu, 29 Oct 2015 06:00:14 -0700
Message-Id: <c903c82661c7ccb8f602f2e0e505a481b53bb836.1446123178.git.amarjargal.gundjalam@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>
References: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>
In-Reply-To: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>
References: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>

This patch fixes the checkpatch issue:

CHECK: Alignment should match open parenthesis

Signed-off-by: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
---
 drivers/staging/media/bcm2048/radio-bcm2048.c |  298 ++++++++++++-------------
 1 file changed, 143 insertions(+), 155 deletions(-)

diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
index c8da22b..70e424c 100644
--- a/drivers/staging/media/bcm2048/radio-bcm2048.c
+++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
@@ -348,7 +348,7 @@ static struct region_info region_configs[] = {
  *	I2C Interface read / write
  */
 static int bcm2048_send_command(struct bcm2048_device *bdev, unsigned int reg,
-					unsigned int value)
+				unsigned int value)
 {
 	struct i2c_client *client = bdev->client;
 	u8 data[2];
@@ -370,7 +370,7 @@ static int bcm2048_send_command(struct bcm2048_device *bdev, unsigned int reg,
 }
 
 static int bcm2048_recv_command(struct bcm2048_device *bdev, unsigned int reg,
-			u8 *value)
+				u8 *value)
 {
 	struct i2c_client *client = bdev->client;
 
@@ -385,7 +385,7 @@ static int bcm2048_recv_command(struct bcm2048_device *bdev, unsigned int reg,
 }
 
 static int bcm2048_recv_duples(struct bcm2048_device *bdev, unsigned int reg,
-			u8 *value, u8 duples)
+			       u8 *value, u8 duples)
 {
 	struct i2c_client *client = bdev->client;
 	struct i2c_adapter *adap = client->adapter;
@@ -436,7 +436,7 @@ static int bcm2048_set_power_state(struct bcm2048_device *bdev, u8 power)
 	 */
 	if (power)
 		err = bcm2048_send_command(bdev, BCM2048_I2C_FM_RDS_SYSTEM,
-					bdev->cache_fm_rds_system);
+					   bdev->cache_fm_rds_system);
 	msleep(BCM2048_DEFAULT_POWERING_DELAY);
 
 	if (!power)
@@ -475,17 +475,17 @@ static int bcm2048_set_rds_no_lock(struct bcm2048_device *bdev, u8 rds_on)
 		bdev->rds_state = BCM2048_RDS_ON;
 		flags =	BCM2048_RDS_FLAG_FIFO_WLINE;
 		err = bcm2048_send_command(bdev, BCM2048_I2C_FM_RDS_MASK1,
-						flags);
+					   flags);
 	} else {
 		flags =	0;
 		bdev->rds_state = 0;
 		err = bcm2048_send_command(bdev, BCM2048_I2C_FM_RDS_MASK1,
-						flags);
+					   flags);
 		memset(&bdev->rds_info, 0, sizeof(bdev->rds_info));
 	}
 
 	err = bcm2048_send_command(bdev, BCM2048_I2C_FM_RDS_SYSTEM,
-					bdev->cache_fm_rds_system);
+				   bdev->cache_fm_rds_system);
 
 	return err;
 }
@@ -545,14 +545,14 @@ static int bcm2048_set_fm_automatic_stereo_mono(struct bcm2048_device *bdev,
 		bdev->cache_fm_ctrl |= BCM2048_STEREO_MONO_AUTO_SELECT;
 
 	err = bcm2048_send_command(bdev, BCM2048_I2C_FM_CTRL,
-					bdev->cache_fm_ctrl);
+				   bdev->cache_fm_ctrl);
 
 	mutex_unlock(&bdev->mutex);
 	return err;
 }
 
 static int bcm2048_set_fm_hi_lo_injection(struct bcm2048_device *bdev,
-						u8 hi_lo)
+					  u8 hi_lo)
 {
 	int err;
 
@@ -564,7 +564,7 @@ static int bcm2048_set_fm_hi_lo_injection(struct bcm2048_device *bdev,
 		bdev->cache_fm_ctrl |= BCM2048_HI_LO_INJECTION;
 
 	err = bcm2048_send_command(bdev, BCM2048_I2C_FM_CTRL,
-					bdev->cache_fm_ctrl);
+				   bdev->cache_fm_ctrl);
 
 	mutex_unlock(&bdev->mutex);
 	return err;
@@ -592,7 +592,7 @@ static int bcm2048_set_fm_frequency(struct bcm2048_device *bdev, u32 frequency)
 	int err;
 
 	if (frequency < bdev->region_info.bottom_frequency ||
-		frequency > bdev->region_info.top_frequency)
+	    frequency > bdev->region_info.top_frequency)
 		return -EDOM;
 
 	frequency -= BCM2048_FREQUENCY_BASE;
@@ -601,7 +601,7 @@ static int bcm2048_set_fm_frequency(struct bcm2048_device *bdev, u32 frequency)
 
 	err = bcm2048_send_command(bdev, BCM2048_I2C_FM_FREQ0, lsb(frequency));
 	err |= bcm2048_send_command(bdev, BCM2048_I2C_FM_FREQ1,
-					msb(frequency));
+				    msb(frequency));
 
 	if (!err)
 		bdev->frequency = frequency;
@@ -632,12 +632,12 @@ static int bcm2048_get_fm_frequency(struct bcm2048_device *bdev)
 }
 
 static int bcm2048_set_fm_af_frequency(struct bcm2048_device *bdev,
-						u32 frequency)
+				       u32 frequency)
 {
 	int err;
 
 	if (frequency < bdev->region_info.bottom_frequency ||
-		frequency > bdev->region_info.top_frequency)
+	    frequency > bdev->region_info.top_frequency)
 		return -EDOM;
 
 	frequency -= BCM2048_FREQUENCY_BASE;
@@ -645,9 +645,9 @@ static int bcm2048_set_fm_af_frequency(struct bcm2048_device *bdev,
 	mutex_lock(&bdev->mutex);
 
 	err = bcm2048_send_command(bdev, BCM2048_I2C_FM_AF_FREQ0,
-					lsb(frequency));
+				   lsb(frequency));
 	err |= bcm2048_send_command(bdev, BCM2048_I2C_FM_AF_FREQ1,
-					msb(frequency));
+				    msb(frequency));
 	if (!err)
 		bdev->frequency = frequency;
 
@@ -692,7 +692,7 @@ static int bcm2048_set_fm_deemphasis(struct bcm2048_device *bdev, int d)
 	bdev->cache_fm_audio_ctrl0 |= deemphasis;
 
 	err = bcm2048_send_command(bdev, BCM2048_I2C_FM_AUDIO_CTRL0,
-		bdev->cache_fm_audio_ctrl0);
+				   bdev->cache_fm_audio_ctrl0);
 
 	if (!err)
 		bdev->region_info.deemphasis = d;
@@ -740,7 +740,7 @@ static int bcm2048_set_region(struct bcm2048_device *bdev, u8 region)
 		bdev->cache_fm_ctrl &= ~BCM2048_BAND_SELECT;
 
 	err = bcm2048_send_command(bdev, BCM2048_I2C_FM_CTRL,
-					bdev->cache_fm_ctrl);
+				   bdev->cache_fm_ctrl);
 	if (err) {
 		mutex_unlock(&bdev->mutex);
 		goto done;
@@ -748,7 +748,7 @@ static int bcm2048_set_region(struct bcm2048_device *bdev, u8 region)
 	mutex_unlock(&bdev->mutex);
 
 	if (bdev->frequency < region_configs[region].bottom_frequency ||
-		bdev->frequency > region_configs[region].top_frequency)
+	    bdev->frequency > region_configs[region].top_frequency)
 		new_frequency = region_configs[region].bottom_frequency;
 
 	if (new_frequency > 0) {
@@ -759,7 +759,7 @@ static int bcm2048_set_region(struct bcm2048_device *bdev, u8 region)
 	}
 
 	err = bcm2048_set_fm_deemphasis(bdev,
-			region_configs[region].deemphasis);
+					region_configs[region].deemphasis);
 
 done:
 	return err;
@@ -786,10 +786,10 @@ static int bcm2048_set_mute(struct bcm2048_device *bdev, u16 mute)
 
 	if (mute)
 		bdev->cache_fm_audio_ctrl0 |= (BCM2048_RF_MUTE |
-						BCM2048_MANUAL_MUTE);
+					       BCM2048_MANUAL_MUTE);
 
 	err = bcm2048_send_command(bdev, BCM2048_I2C_FM_AUDIO_CTRL0,
-					bdev->cache_fm_audio_ctrl0);
+				   bdev->cache_fm_audio_ctrl0);
 
 	if (!err)
 		bdev->mute_state = mute;
@@ -807,7 +807,7 @@ static int bcm2048_get_mute(struct bcm2048_device *bdev)
 
 	if (bdev->power_state) {
 		err = bcm2048_recv_command(bdev, BCM2048_I2C_FM_AUDIO_CTRL0,
-						&value);
+					   &value);
 		if (!err)
 			err = value & (BCM2048_RF_MUTE | BCM2048_MANUAL_MUTE);
 	} else {
@@ -826,11 +826,11 @@ static int bcm2048_set_audio_route(struct bcm2048_device *bdev, u8 route)
 
 	route &= (BCM2048_AUDIO_ROUTE_DAC | BCM2048_AUDIO_ROUTE_I2S);
 	bdev->cache_fm_audio_ctrl0 &= ~(BCM2048_AUDIO_ROUTE_DAC |
-		BCM2048_AUDIO_ROUTE_I2S);
+					BCM2048_AUDIO_ROUTE_I2S);
 	bdev->cache_fm_audio_ctrl0 |= route;
 
 	err = bcm2048_send_command(bdev, BCM2048_I2C_FM_AUDIO_CTRL0,
-					bdev->cache_fm_audio_ctrl0);
+				   bdev->cache_fm_audio_ctrl0);
 
 	mutex_unlock(&bdev->mutex);
 	return err;
@@ -849,7 +849,7 @@ static int bcm2048_get_audio_route(struct bcm2048_device *bdev)
 
 	if (!err)
 		return value & (BCM2048_AUDIO_ROUTE_DAC |
-			BCM2048_AUDIO_ROUTE_I2S);
+				BCM2048_AUDIO_ROUTE_I2S);
 
 	return err;
 }
@@ -865,7 +865,7 @@ static int bcm2048_set_dac_output(struct bcm2048_device *bdev, u8 channels)
 	bdev->cache_fm_audio_ctrl0 |= channels;
 
 	err = bcm2048_send_command(bdev, BCM2048_I2C_FM_AUDIO_CTRL0,
-					bdev->cache_fm_audio_ctrl0);
+				   bdev->cache_fm_audio_ctrl0);
 
 	mutex_unlock(&bdev->mutex);
 	return err;
@@ -884,13 +884,13 @@ static int bcm2048_get_dac_output(struct bcm2048_device *bdev)
 
 	if (!err)
 		return value & (BCM2048_DAC_OUTPUT_LEFT |
-			BCM2048_DAC_OUTPUT_RIGHT);
+				BCM2048_DAC_OUTPUT_RIGHT);
 
 	return err;
 }
 
 static int bcm2048_set_fm_search_rssi_threshold(struct bcm2048_device *bdev,
-							u8 threshold)
+						u8 threshold)
 {
 	int err;
 
@@ -901,7 +901,7 @@ static int bcm2048_set_fm_search_rssi_threshold(struct bcm2048_device *bdev,
 	bdev->cache_fm_search_ctrl0 |= threshold;
 
 	err = bcm2048_send_command(bdev, BCM2048_I2C_FM_SEARCH_CTRL0,
-					bdev->cache_fm_search_ctrl0);
+				   bdev->cache_fm_search_ctrl0);
 
 	mutex_unlock(&bdev->mutex);
 	return err;
@@ -937,7 +937,7 @@ static int bcm2048_set_fm_search_mode_direction(struct bcm2048_device *bdev,
 		bdev->cache_fm_search_ctrl0 |= BCM2048_SEARCH_DIRECTION;
 
 	err = bcm2048_send_command(bdev, BCM2048_I2C_FM_SEARCH_CTRL0,
-					bdev->cache_fm_search_ctrl0);
+				   bdev->cache_fm_search_ctrl0);
 
 	mutex_unlock(&bdev->mutex);
 	return err;
@@ -961,7 +961,7 @@ static int bcm2048_get_fm_search_mode_direction(struct bcm2048_device *bdev)
 }
 
 static int bcm2048_set_fm_search_tune_mode(struct bcm2048_device *bdev,
-						u8 mode)
+					   u8 mode)
 {
 	int err, timeout, restart_rds = 0;
 	u8 value, flags;
@@ -1024,7 +1024,7 @@ static int bcm2048_get_fm_search_tune_mode(struct bcm2048_device *bdev)
 	mutex_lock(&bdev->mutex);
 
 	err = bcm2048_recv_command(bdev, BCM2048_I2C_FM_SEARCH_TUNE_MODE,
-					&value);
+				   &value);
 
 	mutex_unlock(&bdev->mutex);
 
@@ -1040,10 +1040,10 @@ static int bcm2048_set_rds_b_block_mask(struct bcm2048_device *bdev, u16 mask)
 
 	mutex_lock(&bdev->mutex);
 
-	err = bcm2048_send_command(bdev,
-			BCM2048_I2C_RDS_BLKB_MASK0, lsb(mask));
-	err |= bcm2048_send_command(bdev,
-			BCM2048_I2C_RDS_BLKB_MASK1, msb(mask));
+	err = bcm2048_send_command(bdev, BCM2048_I2C_RDS_BLKB_MASK0,
+				   lsb(mask));
+	err |= bcm2048_send_command(bdev, BCM2048_I2C_RDS_BLKB_MASK1,
+				    msb(mask));
 
 	mutex_unlock(&bdev->mutex);
 	return err;
@@ -1056,10 +1056,8 @@ static int bcm2048_get_rds_b_block_mask(struct bcm2048_device *bdev)
 
 	mutex_lock(&bdev->mutex);
 
-	err = bcm2048_recv_command(bdev,
-			BCM2048_I2C_RDS_BLKB_MASK0, &lsb);
-	err |= bcm2048_recv_command(bdev,
-			BCM2048_I2C_RDS_BLKB_MASK1, &msb);
+	err = bcm2048_recv_command(bdev, BCM2048_I2C_RDS_BLKB_MASK0, &lsb);
+	err |= bcm2048_recv_command(bdev, BCM2048_I2C_RDS_BLKB_MASK1, &msb);
 
 	mutex_unlock(&bdev->mutex);
 
@@ -1070,16 +1068,16 @@ static int bcm2048_get_rds_b_block_mask(struct bcm2048_device *bdev)
 }
 
 static int bcm2048_set_rds_b_block_match(struct bcm2048_device *bdev,
-						u16 match)
+					 u16 match)
 {
 	int err;
 
 	mutex_lock(&bdev->mutex);
 
-	err = bcm2048_send_command(bdev,
-			BCM2048_I2C_RDS_BLKB_MATCH0, lsb(match));
-	err |= bcm2048_send_command(bdev,
-			BCM2048_I2C_RDS_BLKB_MATCH1, msb(match));
+	err = bcm2048_send_command(bdev, BCM2048_I2C_RDS_BLKB_MATCH0,
+				   lsb(match));
+	err |= bcm2048_send_command(bdev, BCM2048_I2C_RDS_BLKB_MATCH1,
+				    msb(match));
 
 	mutex_unlock(&bdev->mutex);
 	return err;
@@ -1092,10 +1090,8 @@ static int bcm2048_get_rds_b_block_match(struct bcm2048_device *bdev)
 
 	mutex_lock(&bdev->mutex);
 
-	err = bcm2048_recv_command(bdev,
-			BCM2048_I2C_RDS_BLKB_MATCH0, &lsb);
-	err |= bcm2048_recv_command(bdev,
-			BCM2048_I2C_RDS_BLKB_MATCH1, &msb);
+	err = bcm2048_recv_command(bdev, BCM2048_I2C_RDS_BLKB_MATCH0, &lsb);
+	err |= bcm2048_recv_command(bdev, BCM2048_I2C_RDS_BLKB_MATCH1, &msb);
 
 	mutex_unlock(&bdev->mutex);
 
@@ -1111,10 +1107,8 @@ static int bcm2048_set_rds_pi_mask(struct bcm2048_device *bdev, u16 mask)
 
 	mutex_lock(&bdev->mutex);
 
-	err = bcm2048_send_command(bdev,
-			BCM2048_I2C_RDS_PI_MASK0, lsb(mask));
-	err |= bcm2048_send_command(bdev,
-			BCM2048_I2C_RDS_PI_MASK1, msb(mask));
+	err = bcm2048_send_command(bdev, BCM2048_I2C_RDS_PI_MASK0, lsb(mask));
+	err |= bcm2048_send_command(bdev, BCM2048_I2C_RDS_PI_MASK1, msb(mask));
 
 	mutex_unlock(&bdev->mutex);
 	return err;
@@ -1127,10 +1121,8 @@ static int bcm2048_get_rds_pi_mask(struct bcm2048_device *bdev)
 
 	mutex_lock(&bdev->mutex);
 
-	err = bcm2048_recv_command(bdev,
-			BCM2048_I2C_RDS_PI_MASK0, &lsb);
-	err |= bcm2048_recv_command(bdev,
-			BCM2048_I2C_RDS_PI_MASK1, &msb);
+	err = bcm2048_recv_command(bdev, BCM2048_I2C_RDS_PI_MASK0, &lsb);
+	err |= bcm2048_recv_command(bdev, BCM2048_I2C_RDS_PI_MASK1, &msb);
 
 	mutex_unlock(&bdev->mutex);
 
@@ -1146,10 +1138,10 @@ static int bcm2048_set_rds_pi_match(struct bcm2048_device *bdev, u16 match)
 
 	mutex_lock(&bdev->mutex);
 
-	err = bcm2048_send_command(bdev,
-			BCM2048_I2C_RDS_PI_MATCH0, lsb(match));
-	err |= bcm2048_send_command(bdev,
-			BCM2048_I2C_RDS_PI_MATCH1, msb(match));
+	err = bcm2048_send_command(bdev, BCM2048_I2C_RDS_PI_MATCH0,
+				   lsb(match));
+	err |= bcm2048_send_command(bdev, BCM2048_I2C_RDS_PI_MATCH1,
+				    msb(match));
 
 	mutex_unlock(&bdev->mutex);
 	return err;
@@ -1162,10 +1154,8 @@ static int bcm2048_get_rds_pi_match(struct bcm2048_device *bdev)
 
 	mutex_lock(&bdev->mutex);
 
-	err = bcm2048_recv_command(bdev,
-			BCM2048_I2C_RDS_PI_MATCH0, &lsb);
-	err |= bcm2048_recv_command(bdev,
-			BCM2048_I2C_RDS_PI_MATCH1, &msb);
+	err = bcm2048_recv_command(bdev, BCM2048_I2C_RDS_PI_MATCH0, &lsb);
+	err |= bcm2048_recv_command(bdev, BCM2048_I2C_RDS_PI_MATCH1, &msb);
 
 	mutex_unlock(&bdev->mutex);
 
@@ -1181,10 +1171,8 @@ static int bcm2048_set_fm_rds_mask(struct bcm2048_device *bdev, u16 mask)
 
 	mutex_lock(&bdev->mutex);
 
-	err = bcm2048_send_command(bdev,
-			BCM2048_I2C_FM_RDS_MASK0, lsb(mask));
-	err |= bcm2048_send_command(bdev,
-			BCM2048_I2C_FM_RDS_MASK1, msb(mask));
+	err = bcm2048_send_command(bdev, BCM2048_I2C_FM_RDS_MASK0, lsb(mask));
+	err |= bcm2048_send_command(bdev, BCM2048_I2C_FM_RDS_MASK1, msb(mask));
 
 	mutex_unlock(&bdev->mutex);
 	return err;
@@ -1245,13 +1233,13 @@ static int bcm2048_set_fm_best_tune_mode(struct bcm2048_device *bdev, u8 mode)
 
 	/* Perform read as the manual indicates */
 	err = bcm2048_recv_command(bdev, BCM2048_I2C_FM_BEST_TUNE_MODE,
-					&value);
+				   &value);
 	value &= ~BCM2048_BEST_TUNE_MODE;
 
 	if (mode)
 		value |= BCM2048_BEST_TUNE_MODE;
 	err |= bcm2048_send_command(bdev, BCM2048_I2C_FM_BEST_TUNE_MODE,
-					value);
+				    value);
 
 	mutex_unlock(&bdev->mutex);
 	return err;
@@ -1265,7 +1253,7 @@ static int bcm2048_get_fm_best_tune_mode(struct bcm2048_device *bdev)
 	mutex_lock(&bdev->mutex);
 
 	err = bcm2048_recv_command(bdev, BCM2048_I2C_FM_BEST_TUNE_MODE,
-					&value);
+				   &value);
 
 	mutex_unlock(&bdev->mutex);
 
@@ -1352,7 +1340,7 @@ static int bcm2048_checkrev(struct bcm2048_device *bdev)
 
 	if (!err) {
 		dev_info(&bdev->client->dev, "BCM2048 Version 0x%x\n",
-			version);
+			 version);
 		return version;
 	}
 
@@ -1478,7 +1466,7 @@ static int bcm2048_rds_block_crc(struct bcm2048_device *bdev, int i)
 }
 
 static void bcm2048_parse_rds_rt_block(struct bcm2048_device *bdev, int i,
-					int index, int crc)
+				       int index, int crc)
 {
 	/* Good data will overwrite poor data */
 	if (crc) {
@@ -1506,7 +1494,7 @@ static int bcm2048_parse_rt_match_b(struct bcm2048_device *bdev, int i)
 		return -EIO;
 
 	if ((bdev->rds_info.radio_text[i] & BCM2048_RDS_BLOCK_MASK) ==
-		BCM2048_RDS_BLOCK_B) {
+	    BCM2048_RDS_BLOCK_B) {
 
 		rt_id = bdev->rds_info.radio_text[i + 1] &
 			BCM2048_RDS_BLOCK_MASK;
@@ -1517,7 +1505,7 @@ static int bcm2048_parse_rt_match_b(struct bcm2048_device *bdev, int i)
 
 		if (rt_group_b != bdev->rds_info.rds_rt_group_b) {
 			memset(bdev->rds_info.rds_rt, 0,
-				sizeof(bdev->rds_info.rds_rt));
+			       sizeof(bdev->rds_info.rds_rt));
 			bdev->rds_info.rds_rt_group_b = rt_group_b;
 		}
 
@@ -1525,7 +1513,7 @@ static int bcm2048_parse_rt_match_b(struct bcm2048_device *bdev, int i)
 			/* A to B or (vice versa), means: clear screen */
 			if (rt_ab != bdev->rds_info.rds_rt_ab) {
 				memset(bdev->rds_info.rds_rt, 0,
-					sizeof(bdev->rds_info.rds_rt));
+				       sizeof(bdev->rds_info.rds_rt));
 				bdev->rds_info.rds_rt_ab = rt_ab;
 			}
 
@@ -1545,7 +1533,7 @@ static int bcm2048_parse_rt_match_b(struct bcm2048_device *bdev, int i)
 }
 
 static int bcm2048_parse_rt_match_c(struct bcm2048_device *bdev, int i,
-					int index)
+				    int index)
 {
 	int crc;
 
@@ -1557,7 +1545,7 @@ static int bcm2048_parse_rt_match_c(struct bcm2048_device *bdev, int i,
 	BUG_ON((index+2) >= BCM2048_MAX_RDS_RT);
 
 	if ((bdev->rds_info.radio_text[i] & BCM2048_RDS_BLOCK_MASK) ==
-		BCM2048_RDS_BLOCK_C) {
+	    BCM2048_RDS_BLOCK_C) {
 		if (bdev->rds_info.rds_rt_group_b)
 			return 1;
 		bcm2048_parse_rds_rt_block(bdev, i, index, crc);
@@ -1568,7 +1556,7 @@ static int bcm2048_parse_rt_match_c(struct bcm2048_device *bdev, int i,
 }
 
 static void bcm2048_parse_rt_match_d(struct bcm2048_device *bdev, int i,
-					int index)
+				     int index)
 {
 	int crc;
 
@@ -1580,7 +1568,7 @@ static void bcm2048_parse_rt_match_d(struct bcm2048_device *bdev, int i,
 	BUG_ON((index+4) >= BCM2048_MAX_RDS_RT);
 
 	if ((bdev->rds_info.radio_text[i] & BCM2048_RDS_BLOCK_MASK) ==
-		BCM2048_RDS_BLOCK_D)
+	    BCM2048_RDS_BLOCK_D)
 		bcm2048_parse_rds_rt_block(bdev, i, index + 2, crc);
 }
 
@@ -1608,22 +1596,22 @@ static void bcm2048_parse_rds_rt(struct bcm2048_device *bdev)
 		}
 
 		/* Skip erroneous blocks due to messed up A block altogether */
-		if ((bdev->rds_info.radio_text[i] & BCM2048_RDS_BLOCK_MASK)
-			== BCM2048_RDS_BLOCK_A) {
+		if ((bdev->rds_info.radio_text[i] & BCM2048_RDS_BLOCK_MASK) ==
+		    BCM2048_RDS_BLOCK_A) {
 			crc = bcm2048_rds_block_crc(bdev, i);
 			if (crc == BCM2048_RDS_CRC_UNRECOVARABLE)
 				continue;
 			/* Syncronize to a good RDS PI */
 			if (((bdev->rds_info.radio_text[i + 1] << 8) +
-				bdev->rds_info.radio_text[i + 2]) ==
-				bdev->rds_info.rds_pi)
+			    bdev->rds_info.radio_text[i + 2]) ==
+			    bdev->rds_info.rds_pi)
 				match_b = 1;
 		}
 	}
 }
 
 static void bcm2048_parse_rds_ps_block(struct bcm2048_device *bdev, int i,
-					int index, int crc)
+				       int index, int crc)
 {
 	/* Good data will overwrite poor data */
 	if (crc) {
@@ -1642,7 +1630,7 @@ static void bcm2048_parse_rds_ps_block(struct bcm2048_device *bdev, int i,
 }
 
 static int bcm2048_parse_ps_match_c(struct bcm2048_device *bdev, int i,
-					int index)
+				    int index)
 {
 	int crc;
 
@@ -1652,14 +1640,14 @@ static int bcm2048_parse_ps_match_c(struct bcm2048_device *bdev, int i,
 		return 0;
 
 	if ((bdev->rds_info.radio_text[i] & BCM2048_RDS_BLOCK_MASK) ==
-		BCM2048_RDS_BLOCK_C)
+	    BCM2048_RDS_BLOCK_C)
 		return 1;
 
 	return 0;
 }
 
 static void bcm2048_parse_ps_match_d(struct bcm2048_device *bdev, int i,
-					int index)
+				     int index)
 {
 	int crc;
 
@@ -1669,7 +1657,7 @@ static void bcm2048_parse_ps_match_d(struct bcm2048_device *bdev, int i,
 		return;
 
 	if ((bdev->rds_info.radio_text[i] & BCM2048_RDS_BLOCK_MASK) ==
-		BCM2048_RDS_BLOCK_D)
+	    BCM2048_RDS_BLOCK_D)
 		bcm2048_parse_rds_ps_block(bdev, i, index, crc);
 }
 
@@ -1684,7 +1672,7 @@ static int bcm2048_parse_ps_match_b(struct bcm2048_device *bdev, int i)
 
 	/* Block B Radio PS match */
 	if ((bdev->rds_info.radio_text[i] & BCM2048_RDS_BLOCK_MASK) ==
-		BCM2048_RDS_BLOCK_B) {
+	    BCM2048_RDS_BLOCK_B) {
 		ps_id = bdev->rds_info.radio_text[i + 1] &
 			BCM2048_RDS_BLOCK_MASK;
 		ps_group = bdev->rds_info.radio_text[i + 1] &
@@ -1745,15 +1733,15 @@ static void bcm2048_parse_rds_ps(struct bcm2048_device *bdev)
 		}
 
 		/* Skip erroneous blocks due to messed up A block altogether */
-		if ((bdev->rds_info.radio_text[i] & BCM2048_RDS_BLOCK_MASK)
-			== BCM2048_RDS_BLOCK_A) {
+		if ((bdev->rds_info.radio_text[i] & BCM2048_RDS_BLOCK_MASK) ==
+		    BCM2048_RDS_BLOCK_A) {
 			crc = bcm2048_rds_block_crc(bdev, i);
 			if (crc == BCM2048_RDS_CRC_UNRECOVARABLE)
 				continue;
 			/* Syncronize to a good RDS PI */
 			if (((bdev->rds_info.radio_text[i + 1] << 8) +
-				bdev->rds_info.radio_text[i + 2]) ==
-				bdev->rds_info.rds_pi)
+			    bdev->rds_info.radio_text[i + 2]) ==
+			    bdev->rds_info.rds_pi)
 				match_b = 1;
 		}
 	}
@@ -1766,7 +1754,7 @@ static void bcm2048_rds_fifo_receive(struct bcm2048_device *bdev)
 	mutex_lock(&bdev->mutex);
 
 	err = bcm2048_recv_duples(bdev, BCM2048_I2C_RDS_DATA,
-				bdev->rds_info.radio_text, bdev->fifo_size);
+				  bdev->rds_info.radio_text, bdev->fifo_size);
 	if (err != 2) {
 		dev_err(&bdev->client->dev, "RDS Read problem\n");
 		mutex_unlock(&bdev->mutex);
@@ -1804,7 +1792,7 @@ static int bcm2048_get_rds_data(struct bcm2048_device *bdev, char *data)
 
 	for (i = 0; i < bdev->rds_info.text_len; i++) {
 		p += sprintf(data_buffer + p, "%x ",
-			bdev->rds_info.radio_text[i]);
+			     bdev->rds_info.radio_text[i]);
 	}
 
 	memcpy(data, data_buffer, p);
@@ -1831,7 +1819,7 @@ static int bcm2048_init(struct bcm2048_device *bdev)
 		goto exit;
 
 	err = bcm2048_set_dac_output(bdev, BCM2048_DAC_OUTPUT_LEFT |
-		BCM2048_DAC_OUTPUT_RIGHT);
+				     BCM2048_DAC_OUTPUT_RIGHT);
 
 exit:
 	return err;
@@ -1937,7 +1925,7 @@ static void bcm2048_work(struct work_struct *work)
 		if (bdev->rds_state) {
 			flags =	BCM2048_RDS_FLAG_FIFO_WLINE;
 			bcm2048_send_command(bdev, BCM2048_I2C_FM_RDS_MASK1,
-						flags);
+					     flags);
 		}
 		bdev->rds_data_available = 1;
 		bdev->rd_index = 0; /* new data, new start */
@@ -2086,70 +2074,70 @@ DEFINE_SYSFS_PROPERTY(region, unsigned, int, "%u", 0)
 
 static struct device_attribute attrs[] = {
 	__ATTR(power_state, S_IRUGO | S_IWUSR, bcm2048_power_state_read,
-		bcm2048_power_state_write),
+	       bcm2048_power_state_write),
 	__ATTR(mute, S_IRUGO | S_IWUSR, bcm2048_mute_read,
-		bcm2048_mute_write),
+	       bcm2048_mute_write),
 	__ATTR(audio_route, S_IRUGO | S_IWUSR, bcm2048_audio_route_read,
-		bcm2048_audio_route_write),
+	       bcm2048_audio_route_write),
 	__ATTR(dac_output, S_IRUGO | S_IWUSR, bcm2048_dac_output_read,
-		bcm2048_dac_output_write),
+	       bcm2048_dac_output_write),
 	__ATTR(fm_hi_lo_injection, S_IRUGO | S_IWUSR,
-		bcm2048_fm_hi_lo_injection_read,
-		bcm2048_fm_hi_lo_injection_write),
+	       bcm2048_fm_hi_lo_injection_read,
+	       bcm2048_fm_hi_lo_injection_write),
 	__ATTR(fm_frequency, S_IRUGO | S_IWUSR, bcm2048_fm_frequency_read,
-		bcm2048_fm_frequency_write),
+	       bcm2048_fm_frequency_write),
 	__ATTR(fm_af_frequency, S_IRUGO | S_IWUSR,
-		bcm2048_fm_af_frequency_read,
-		bcm2048_fm_af_frequency_write),
+	       bcm2048_fm_af_frequency_read,
+	       bcm2048_fm_af_frequency_write),
 	__ATTR(fm_deemphasis, S_IRUGO | S_IWUSR, bcm2048_fm_deemphasis_read,
-		bcm2048_fm_deemphasis_write),
+	       bcm2048_fm_deemphasis_write),
 	__ATTR(fm_rds_mask, S_IRUGO | S_IWUSR, bcm2048_fm_rds_mask_read,
-		bcm2048_fm_rds_mask_write),
+	       bcm2048_fm_rds_mask_write),
 	__ATTR(fm_best_tune_mode, S_IRUGO | S_IWUSR,
-		bcm2048_fm_best_tune_mode_read,
-		bcm2048_fm_best_tune_mode_write),
+	       bcm2048_fm_best_tune_mode_read,
+	       bcm2048_fm_best_tune_mode_write),
 	__ATTR(fm_search_rssi_threshold, S_IRUGO | S_IWUSR,
-		bcm2048_fm_search_rssi_threshold_read,
-		bcm2048_fm_search_rssi_threshold_write),
+	       bcm2048_fm_search_rssi_threshold_read,
+	       bcm2048_fm_search_rssi_threshold_write),
 	__ATTR(fm_search_mode_direction, S_IRUGO | S_IWUSR,
-		bcm2048_fm_search_mode_direction_read,
-		bcm2048_fm_search_mode_direction_write),
+	       bcm2048_fm_search_mode_direction_read,
+	       bcm2048_fm_search_mode_direction_write),
 	__ATTR(fm_search_tune_mode, S_IRUGO | S_IWUSR,
-		bcm2048_fm_search_tune_mode_read,
-		bcm2048_fm_search_tune_mode_write),
+	       bcm2048_fm_search_tune_mode_read,
+	       bcm2048_fm_search_tune_mode_write),
 	__ATTR(rds, S_IRUGO | S_IWUSR, bcm2048_rds_read,
-		bcm2048_rds_write),
+	       bcm2048_rds_write),
 	__ATTR(rds_b_block_mask, S_IRUGO | S_IWUSR,
-		bcm2048_rds_b_block_mask_read,
-		bcm2048_rds_b_block_mask_write),
+	       bcm2048_rds_b_block_mask_read,
+	       bcm2048_rds_b_block_mask_write),
 	__ATTR(rds_b_block_match, S_IRUGO | S_IWUSR,
-		bcm2048_rds_b_block_match_read,
-		bcm2048_rds_b_block_match_write),
+	       bcm2048_rds_b_block_match_read,
+	       bcm2048_rds_b_block_match_write),
 	__ATTR(rds_pi_mask, S_IRUGO | S_IWUSR, bcm2048_rds_pi_mask_read,
-		bcm2048_rds_pi_mask_write),
+	       bcm2048_rds_pi_mask_write),
 	__ATTR(rds_pi_match, S_IRUGO | S_IWUSR, bcm2048_rds_pi_match_read,
-		bcm2048_rds_pi_match_write),
+	       bcm2048_rds_pi_match_write),
 	__ATTR(rds_wline, S_IRUGO | S_IWUSR, bcm2048_rds_wline_read,
-		bcm2048_rds_wline_write),
+	       bcm2048_rds_wline_write),
 	__ATTR(rds_pi, S_IRUGO, bcm2048_rds_pi_read, NULL),
 	__ATTR(rds_rt, S_IRUGO, bcm2048_rds_rt_read, NULL),
 	__ATTR(rds_ps, S_IRUGO, bcm2048_rds_ps_read, NULL),
 	__ATTR(fm_rds_flags, S_IRUGO, bcm2048_fm_rds_flags_read, NULL),
 	__ATTR(region_bottom_frequency, S_IRUGO,
-		bcm2048_region_bottom_frequency_read, NULL),
+	       bcm2048_region_bottom_frequency_read, NULL),
 	__ATTR(region_top_frequency, S_IRUGO,
-		bcm2048_region_top_frequency_read, NULL),
+	       bcm2048_region_top_frequency_read, NULL),
 	__ATTR(fm_carrier_error, S_IRUGO,
-		bcm2048_fm_carrier_error_read, NULL),
+	       bcm2048_fm_carrier_error_read, NULL),
 	__ATTR(fm_rssi, S_IRUGO,
-		bcm2048_fm_rssi_read, NULL),
+	       bcm2048_fm_rssi_read, NULL),
 	__ATTR(region, S_IRUGO | S_IWUSR, bcm2048_region_read,
-		bcm2048_region_write),
+	       bcm2048_region_write),
 	__ATTR(rds_data, S_IRUGO, bcm2048_rds_data_read, NULL),
 };
 
 static int bcm2048_sysfs_unregister_properties(struct bcm2048_device *bdev,
-						int size)
+					       int size)
 {
 	int i;
 
@@ -2167,7 +2155,7 @@ static int bcm2048_sysfs_register_properties(struct bcm2048_device *bdev)
 	for (i = 0; i < ARRAY_SIZE(attrs); i++) {
 		if (device_create_file(&bdev->client->dev, &attrs[i]) != 0) {
 			dev_err(&bdev->client->dev,
-					"could not register sysfs entry\n");
+				"could not register sysfs entry\n");
 			err = -EBUSY;
 			bcm2048_sysfs_unregister_properties(bdev, i);
 			break;
@@ -2199,7 +2187,7 @@ static int bcm2048_fops_release(struct file *file)
 }
 
 static unsigned int bcm2048_fops_poll(struct file *file,
-		struct poll_table_struct *pts)
+				      struct poll_table_struct *pts)
 {
 	struct bcm2048_device *bdev = video_drvdata(file);
 	int retval = 0;
@@ -2213,7 +2201,7 @@ static unsigned int bcm2048_fops_poll(struct file *file,
 }
 
 static ssize_t bcm2048_fops_read(struct file *file, char __user *buf,
-	size_t count, loff_t *ppos)
+				 size_t count, loff_t *ppos)
 {
 	struct bcm2048_device *bdev = video_drvdata(file);
 	int i;
@@ -2231,7 +2219,7 @@ static ssize_t bcm2048_fops_read(struct file *file, char __user *buf,
 		}
 		/* interruptible_sleep_on(&bdev->read_queue); */
 		if (wait_event_interruptible(bdev->read_queue,
-			bdev->rds_data_available) < 0) {
+		    bdev->rds_data_available) < 0) {
 			retval = -EINTR;
 			goto done;
 		}
@@ -2254,7 +2242,7 @@ static ssize_t bcm2048_fops_read(struct file *file, char __user *buf,
 			(bdev->rds_info.radio_text[bdev->rd_index + i] &
 			 0xf0) >> 4;
 		if ((bdev->rds_info.radio_text[bdev->rd_index + i] &
-			BCM2048_RDS_CRC_MASK) == BCM2048_RDS_CRC_UNRECOVARABLE)
+		    BCM2048_RDS_CRC_MASK) == BCM2048_RDS_CRC_UNRECOVARABLE)
 			tmpbuf[i + 2] |= 0x80;
 		if (copy_to_user(buf + i, tmpbuf, 3)) {
 			retval = -EFAULT;
@@ -2324,7 +2312,7 @@ static struct v4l2_queryctrl bcm2048_v4l2_queryctrl[] = {
 };
 
 static int bcm2048_vidioc_querycap(struct file *file, void *priv,
-		struct v4l2_capability *capability)
+				   struct v4l2_capability *capability)
 {
 	struct bcm2048_device *bdev = video_get_drvdata(video_devdata(file));
 
@@ -2342,7 +2330,7 @@ static int bcm2048_vidioc_querycap(struct file *file, void *priv,
 }
 
 static int bcm2048_vidioc_g_input(struct file *filp, void *priv,
-		unsigned int *i)
+				  unsigned int *i)
 {
 	*i = 0;
 
@@ -2350,7 +2338,7 @@ static int bcm2048_vidioc_g_input(struct file *filp, void *priv,
 }
 
 static int bcm2048_vidioc_s_input(struct file *filp, void *priv,
-					unsigned int i)
+				  unsigned int i)
 {
 	if (i)
 		return -EINVAL;
@@ -2359,7 +2347,7 @@ static int bcm2048_vidioc_s_input(struct file *filp, void *priv,
 }
 
 static int bcm2048_vidioc_queryctrl(struct file *file, void *priv,
-		struct v4l2_queryctrl *qc)
+				    struct v4l2_queryctrl *qc)
 {
 	int i;
 
@@ -2374,7 +2362,7 @@ static int bcm2048_vidioc_queryctrl(struct file *file, void *priv,
 }
 
 static int bcm2048_vidioc_g_ctrl(struct file *file, void *priv,
-		struct v4l2_control *ctrl)
+				 struct v4l2_control *ctrl)
 {
 	struct bcm2048_device *bdev = video_get_drvdata(video_devdata(file));
 	int err = 0;
@@ -2394,7 +2382,7 @@ static int bcm2048_vidioc_g_ctrl(struct file *file, void *priv,
 }
 
 static int bcm2048_vidioc_s_ctrl(struct file *file, void *priv,
-		struct v4l2_control *ctrl)
+				 struct v4l2_control *ctrl)
 {
 	struct bcm2048_device *bdev = video_get_drvdata(video_devdata(file));
 	int err = 0;
@@ -2422,7 +2410,7 @@ static int bcm2048_vidioc_s_ctrl(struct file *file, void *priv,
 }
 
 static int bcm2048_vidioc_g_audio(struct file *file, void *priv,
-		struct v4l2_audio *audio)
+				  struct v4l2_audio *audio)
 {
 	if (audio->index > 1)
 		return -EINVAL;
@@ -2434,7 +2422,7 @@ static int bcm2048_vidioc_g_audio(struct file *file, void *priv,
 }
 
 static int bcm2048_vidioc_s_audio(struct file *file, void *priv,
-		const struct v4l2_audio *audio)
+				  const struct v4l2_audio *audio)
 {
 	if (audio->index != 0)
 		return -EINVAL;
@@ -2443,7 +2431,7 @@ static int bcm2048_vidioc_s_audio(struct file *file, void *priv,
 }
 
 static int bcm2048_vidioc_g_tuner(struct file *file, void *priv,
-		struct v4l2_tuner *tuner)
+				  struct v4l2_tuner *tuner)
 {
 	struct bcm2048_device *bdev = video_get_drvdata(video_devdata(file));
 	s8 f_error;
@@ -2498,7 +2486,7 @@ static int bcm2048_vidioc_g_tuner(struct file *file, void *priv,
 }
 
 static int bcm2048_vidioc_s_tuner(struct file *file, void *priv,
-		const struct v4l2_tuner *tuner)
+				  const struct v4l2_tuner *tuner)
 {
 	struct bcm2048_device *bdev = video_get_drvdata(video_devdata(file));
 
@@ -2512,7 +2500,7 @@ static int bcm2048_vidioc_s_tuner(struct file *file, void *priv,
 }
 
 static int bcm2048_vidioc_g_frequency(struct file *file, void *priv,
-		struct v4l2_frequency *freq)
+				      struct v4l2_frequency *freq)
 {
 	struct bcm2048_device *bdev = video_get_drvdata(video_devdata(file));
 	int err = 0;
@@ -2533,7 +2521,7 @@ static int bcm2048_vidioc_g_frequency(struct file *file, void *priv,
 }
 
 static int bcm2048_vidioc_s_frequency(struct file *file, void *priv,
-		const struct v4l2_frequency *freq)
+				      const struct v4l2_frequency *freq)
 {
 	struct bcm2048_device *bdev = video_get_drvdata(video_devdata(file));
 	int err;
@@ -2551,7 +2539,7 @@ static int bcm2048_vidioc_s_frequency(struct file *file, void *priv,
 }
 
 static int bcm2048_vidioc_s_hw_freq_seek(struct file *file, void *priv,
-					const struct v4l2_hw_freq_seek *seek)
+					 const struct v4l2_hw_freq_seek *seek)
 {
 	struct bcm2048_device *bdev = video_get_drvdata(video_devdata(file));
 	int err;
@@ -2564,7 +2552,7 @@ static int bcm2048_vidioc_s_hw_freq_seek(struct file *file, void *priv,
 
 	err = bcm2048_set_fm_search_mode_direction(bdev, seek->seek_upward);
 	err |= bcm2048_set_fm_search_tune_mode(bdev,
-			BCM2048_FM_AUTO_SEARCH_MODE);
+					       BCM2048_FM_AUTO_SEARCH_MODE);
 
 	return err;
 }
@@ -2599,7 +2587,7 @@ static struct video_device bcm2048_viddev_template = {
  *	I2C driver interface
  */
 static int bcm2048_i2c_driver_probe(struct i2c_client *client,
-					const struct i2c_device_id *id)
+				    const struct i2c_device_id *id)
 {
 	struct bcm2048_device *bdev;
 	int err;
@@ -2618,8 +2606,8 @@ static int bcm2048_i2c_driver_probe(struct i2c_client *client,
 
 	if (client->irq) {
 		err = request_irq(client->irq,
-			bcm2048_handler, IRQF_TRIGGER_FALLING,
-			client->name, bdev);
+				  bcm2048_handler, IRQF_TRIGGER_FALLING,
+				  client->name, bdev);
 		if (err < 0) {
 			dev_err(&client->dev, "Could not request IRQ\n");
 			goto free_bdev;
-- 
1.7.9.5


