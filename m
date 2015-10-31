X-GM-THRID: 6211053698454388736
X-Received: by 10.66.162.194 with SMTP id yc2mr6264705pab.25.1446281817355;
        Sat, 31 Oct 2015 01:56:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.97.9 with SMTP id l9ls1460124qge.91.gmail; Sat, 31 Oct
 2015 01:56:56 -0700 (PDT)
X-Received: by 10.31.15.16 with SMTP id 16mr9852143vkp.0.1446281816765;
        Sat, 31 Oct 2015 01:56:56 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id iz5si973317pbc.2.2015.10.31.01.56.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 01:56:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amarjargal.gundjalam@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id fv9so100604085pac.3
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 01:56:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=7jAEHov3jx+0wmgWD5Gze6YttcvW/Y23OaI8VXgISRU=;
        b=oBIQLMqvsTfkCXU6yc4E0B5rP+OCBaXeqOjEYYaWi4hqY5VmJSh6df2Wt1qMzotA8D
         P122noqzTpW00jBpgJIN/qKoAM2KGvCLIgtSP4hU8shU+IHEXmyZGCx4e0GF8dci4FXP
         P8G0LkY88cQRrz4lEmJ3wnyrj2xVRhfvtx1Lm3i1fDV8pQv1XNIGfuH/5rtXWLjB2HAb
         D69jqG4VgV79EzQgNC/mMtBMKlqHDx6i0W4Kd3CTuQvrQJSNN4WS2pRQ9CShMmwE2Ys5
         iHE/n1LA9m9wt2KOkgy/ij4Ee/3pj6bO6Fi4nYLspraKzrt+DQZOSGUK57EAbWVT4MW8
         kQNg==
X-Received: by 10.66.190.33 with SMTP id gn1mr14044643pac.102.1446281816604;
        Sat, 31 Oct 2015 01:56:56 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from localhost.localdomain ([103.26.195.49])
        by smtp.googlemail.com with ESMTPSA id yp9sm12645749pab.1.2015.10.31.01.56.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 01:56:56 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/5] staging: media: bcm2048: match alignments with open parenthesis
Date: Sat, 31 Oct 2015 01:56:37 -0700
Message-Id: <77bff061e6e50d739074843f1e9f8bc2e7907a9c.1446281119.git.amarjargal.gundjalam@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1446281119.git.amarjargal.gundjalam@gmail.com>
References: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>
 <cover.1446281119.git.amarjargal.gundjalam@gmail.com>
In-Reply-To: <cover.1446281119.git.amarjargal.gundjalam@gmail.com>
References: <cover.1446281119.git.amarjargal.gundjalam@gmail.com>

This patch fixes the checkpatch issue:

CHECK: Alignment should match open parenthesis

Signed-off-by: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
---
 drivers/staging/media/bcm2048/radio-bcm2048.c |  304 ++++++++++++-------------
 1 file changed, 146 insertions(+), 158 deletions(-)

diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
index fb55e59..fabd75a 100644
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
@@ -1505,7 +1493,7 @@ static int bcm2048_parse_rt_match_b(struct bcm2048_device *bdev, int i)
 		return -EIO;
 
 	if ((bdev->rds_info.radio_text[i] & BCM2048_RDS_BLOCK_MASK) ==
-		BCM2048_RDS_BLOCK_B) {
+	    BCM2048_RDS_BLOCK_B) {
 
 		rt_id = bdev->rds_info.radio_text[i+1] &
 			BCM2048_RDS_BLOCK_MASK;
@@ -1516,7 +1504,7 @@ static int bcm2048_parse_rt_match_b(struct bcm2048_device *bdev, int i)
 
 		if (rt_group_b != bdev->rds_info.rds_rt_group_b) {
 			memset(bdev->rds_info.rds_rt, 0,
-				sizeof(bdev->rds_info.rds_rt));
+			       sizeof(bdev->rds_info.rds_rt));
 			bdev->rds_info.rds_rt_group_b = rt_group_b;
 		}
 
@@ -1524,7 +1512,7 @@ static int bcm2048_parse_rt_match_b(struct bcm2048_device *bdev, int i)
 			/* A to B or (vice versa), means: clear screen */
 			if (rt_ab != bdev->rds_info.rds_rt_ab) {
 				memset(bdev->rds_info.rds_rt, 0,
-					sizeof(bdev->rds_info.rds_rt));
+				       sizeof(bdev->rds_info.rds_rt));
 				bdev->rds_info.rds_rt_ab = rt_ab;
 			}
 
@@ -1544,7 +1532,7 @@ static int bcm2048_parse_rt_match_b(struct bcm2048_device *bdev, int i)
 }
 
 static int bcm2048_parse_rt_match_c(struct bcm2048_device *bdev, int i,
-					int index)
+				    int index)
 {
 	int crc;
 
@@ -1567,7 +1555,7 @@ static int bcm2048_parse_rt_match_c(struct bcm2048_device *bdev, int i,
 }
 
 static void bcm2048_parse_rt_match_d(struct bcm2048_device *bdev, int i,
-					int index)
+				     int index)
 {
 	int crc;
 
@@ -1579,7 +1567,7 @@ static void bcm2048_parse_rt_match_d(struct bcm2048_device *bdev, int i,
 	BUG_ON((index+4) >= BCM2048_MAX_RDS_RT);
 
 	if ((bdev->rds_info.radio_text[i] & BCM2048_RDS_BLOCK_MASK) ==
-		BCM2048_RDS_BLOCK_D)
+	    BCM2048_RDS_BLOCK_D)
 		bcm2048_parse_rds_rt_block(bdev, i, index+2, crc);
 }
 
@@ -1607,22 +1595,22 @@ static void bcm2048_parse_rds_rt(struct bcm2048_device *bdev)
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
-			if (((bdev->rds_info.radio_text[i+1] << 8) +
-				bdev->rds_info.radio_text[i+2]) ==
-				bdev->rds_info.rds_pi)
-					match_b = 1;
+			if (((bdev->rds_info.radio_text[i + 1] << 8) +
+			    bdev->rds_info.radio_text[i + 2]) ==
+			    bdev->rds_info.rds_pi)
+				match_b = 1;
 		}
 	}
 }
 
 static void bcm2048_parse_rds_ps_block(struct bcm2048_device *bdev, int i,
-					int index, int crc)
+				       int index, int crc)
 {
 	/* Good data will overwrite poor data */
 	if (crc) {
@@ -1640,7 +1628,7 @@ static void bcm2048_parse_rds_ps_block(struct bcm2048_device *bdev, int i,
 }
 
 static int bcm2048_parse_ps_match_c(struct bcm2048_device *bdev, int i,
-					int index)
+				    int index)
 {
 	int crc;
 
@@ -1650,14 +1638,14 @@ static int bcm2048_parse_ps_match_c(struct bcm2048_device *bdev, int i,
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
 
@@ -1667,7 +1655,7 @@ static void bcm2048_parse_ps_match_d(struct bcm2048_device *bdev, int i,
 		return;
 
 	if ((bdev->rds_info.radio_text[i] & BCM2048_RDS_BLOCK_MASK) ==
-		BCM2048_RDS_BLOCK_D)
+	    BCM2048_RDS_BLOCK_D)
 		bcm2048_parse_rds_ps_block(bdev, i, index, crc);
 }
 
@@ -1682,7 +1670,7 @@ static int bcm2048_parse_ps_match_b(struct bcm2048_device *bdev, int i)
 
 	/* Block B Radio PS match */
 	if ((bdev->rds_info.radio_text[i] & BCM2048_RDS_BLOCK_MASK) ==
-		BCM2048_RDS_BLOCK_B) {
+	    BCM2048_RDS_BLOCK_B) {
 		ps_id = bdev->rds_info.radio_text[i+1] &
 			BCM2048_RDS_BLOCK_MASK;
 		ps_group = bdev->rds_info.radio_text[i+1] &
@@ -1743,16 +1731,16 @@ static void bcm2048_parse_rds_ps(struct bcm2048_device *bdev)
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
-			if (((bdev->rds_info.radio_text[i+1] << 8) +
-				bdev->rds_info.radio_text[i+2]) ==
-				bdev->rds_info.rds_pi)
-					match_b = 1;
+			if (((bdev->rds_info.radio_text[i + 1] << 8) +
+			    bdev->rds_info.radio_text[i + 2]) ==
+			    bdev->rds_info.rds_pi)
+				match_b = 1;
 		}
 	}
 }
@@ -1764,7 +1752,7 @@ static void bcm2048_rds_fifo_receive(struct bcm2048_device *bdev)
 	mutex_lock(&bdev->mutex);
 
 	err = bcm2048_recv_duples(bdev, BCM2048_I2C_RDS_DATA,
-				bdev->rds_info.radio_text, bdev->fifo_size);
+				  bdev->rds_info.radio_text, bdev->fifo_size);
 	if (err != 2) {
 		dev_err(&bdev->client->dev, "RDS Read problem\n");
 		mutex_unlock(&bdev->mutex);
@@ -1802,7 +1790,7 @@ static int bcm2048_get_rds_data(struct bcm2048_device *bdev, char *data)
 
 	for (i = 0; i < bdev->rds_info.text_len; i++) {
 		p += sprintf(data_buffer+p, "%x ",
-			bdev->rds_info.radio_text[i]);
+			     bdev->rds_info.radio_text[i]);
 	}
 
 	memcpy(data, data_buffer, p);
@@ -1829,7 +1817,7 @@ static int bcm2048_init(struct bcm2048_device *bdev)
 		goto exit;
 
 	err = bcm2048_set_dac_output(bdev, BCM2048_DAC_OUTPUT_LEFT |
-		BCM2048_DAC_OUTPUT_RIGHT);
+				     BCM2048_DAC_OUTPUT_RIGHT);
 
 exit:
 	return err;
@@ -1935,7 +1923,7 @@ static void bcm2048_work(struct work_struct *work)
 		if (bdev->rds_state) {
 			flags =	BCM2048_RDS_FLAG_FIFO_WLINE;
 			bcm2048_send_command(bdev, BCM2048_I2C_FM_RDS_MASK1,
-						flags);
+					     flags);
 		}
 		bdev->rds_data_available = 1;
 		bdev->rd_index = 0; /* new data, new start */
@@ -2084,70 +2072,70 @@ DEFINE_SYSFS_PROPERTY(region, unsigned, int, "%u", 0)
 
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
 
@@ -2165,7 +2153,7 @@ static int bcm2048_sysfs_register_properties(struct bcm2048_device *bdev)
 	for (i = 0; i < ARRAY_SIZE(attrs); i++) {
 		if (device_create_file(&bdev->client->dev, &attrs[i]) != 0) {
 			dev_err(&bdev->client->dev,
-					"could not register sysfs entry\n");
+				"could not register sysfs entry\n");
 			err = -EBUSY;
 			bcm2048_sysfs_unregister_properties(bdev, i);
 			break;
@@ -2197,7 +2185,7 @@ static int bcm2048_fops_release(struct file *file)
 }
 
 static unsigned int bcm2048_fops_poll(struct file *file,
-		struct poll_table_struct *pts)
+				      struct poll_table_struct *pts)
 {
 	struct bcm2048_device *bdev = video_drvdata(file);
 	int retval = 0;
@@ -2211,7 +2199,7 @@ static unsigned int bcm2048_fops_poll(struct file *file,
 }
 
 static ssize_t bcm2048_fops_read(struct file *file, char __user *buf,
-	size_t count, loff_t *ppos)
+				 size_t count, loff_t *ppos)
 {
 	struct bcm2048_device *bdev = video_drvdata(file);
 	int i;
@@ -2229,7 +2217,7 @@ static ssize_t bcm2048_fops_read(struct file *file, char __user *buf,
 		}
 		/* interruptible_sleep_on(&bdev->read_queue); */
 		if (wait_event_interruptible(bdev->read_queue,
-			bdev->rds_data_available) < 0) {
+		    bdev->rds_data_available) < 0) {
 			retval = -EINTR;
 			goto done;
 		}
@@ -2249,7 +2237,7 @@ static ssize_t bcm2048_fops_read(struct file *file, char __user *buf,
 		tmpbuf[i+1] = bdev->rds_info.radio_text[bdev->rd_index+i+1];
 		tmpbuf[i+2] = (bdev->rds_info.radio_text[bdev->rd_index + i] & 0xf0) >> 4;
 		if ((bdev->rds_info.radio_text[bdev->rd_index+i] &
-			BCM2048_RDS_CRC_MASK) == BCM2048_RDS_CRC_UNRECOVARABLE)
+		    BCM2048_RDS_CRC_MASK) == BCM2048_RDS_CRC_UNRECOVARABLE)
 			tmpbuf[i+2] |= 0x80;
 		if (copy_to_user(buf+i, tmpbuf, 3)) {
 			retval = -EFAULT;
@@ -2319,7 +2307,7 @@ static struct v4l2_queryctrl bcm2048_v4l2_queryctrl[] = {
 };
 
 static int bcm2048_vidioc_querycap(struct file *file, void *priv,
-		struct v4l2_capability *capability)
+				   struct v4l2_capability *capability)
 {
 	struct bcm2048_device *bdev = video_get_drvdata(video_devdata(file));
 
@@ -2337,7 +2325,7 @@ static int bcm2048_vidioc_querycap(struct file *file, void *priv,
 }
 
 static int bcm2048_vidioc_g_input(struct file *filp, void *priv,
-		unsigned int *i)
+				  unsigned int *i)
 {
 	*i = 0;
 
@@ -2345,7 +2333,7 @@ static int bcm2048_vidioc_g_input(struct file *filp, void *priv,
 }
 
 static int bcm2048_vidioc_s_input(struct file *filp, void *priv,
-					unsigned int i)
+				  unsigned int i)
 {
 	if (i)
 		return -EINVAL;
@@ -2354,7 +2342,7 @@ static int bcm2048_vidioc_s_input(struct file *filp, void *priv,
 }
 
 static int bcm2048_vidioc_queryctrl(struct file *file, void *priv,
-		struct v4l2_queryctrl *qc)
+				    struct v4l2_queryctrl *qc)
 {
 	int i;
 
@@ -2369,7 +2357,7 @@ static int bcm2048_vidioc_queryctrl(struct file *file, void *priv,
 }
 
 static int bcm2048_vidioc_g_ctrl(struct file *file, void *priv,
-		struct v4l2_control *ctrl)
+				 struct v4l2_control *ctrl)
 {
 	struct bcm2048_device *bdev = video_get_drvdata(video_devdata(file));
 	int err = 0;
@@ -2389,7 +2377,7 @@ static int bcm2048_vidioc_g_ctrl(struct file *file, void *priv,
 }
 
 static int bcm2048_vidioc_s_ctrl(struct file *file, void *priv,
-		struct v4l2_control *ctrl)
+				 struct v4l2_control *ctrl)
 {
 	struct bcm2048_device *bdev = video_get_drvdata(video_devdata(file));
 	int err = 0;
@@ -2417,7 +2405,7 @@ static int bcm2048_vidioc_s_ctrl(struct file *file, void *priv,
 }
 
 static int bcm2048_vidioc_g_audio(struct file *file, void *priv,
-		struct v4l2_audio *audio)
+				  struct v4l2_audio *audio)
 {
 	if (audio->index > 1)
 		return -EINVAL;
@@ -2429,7 +2417,7 @@ static int bcm2048_vidioc_g_audio(struct file *file, void *priv,
 }
 
 static int bcm2048_vidioc_s_audio(struct file *file, void *priv,
-		const struct v4l2_audio *audio)
+				  const struct v4l2_audio *audio)
 {
 	if (audio->index != 0)
 		return -EINVAL;
@@ -2438,7 +2426,7 @@ static int bcm2048_vidioc_s_audio(struct file *file, void *priv,
 }
 
 static int bcm2048_vidioc_g_tuner(struct file *file, void *priv,
-		struct v4l2_tuner *tuner)
+				  struct v4l2_tuner *tuner)
 {
 	struct bcm2048_device *bdev = video_get_drvdata(video_devdata(file));
 	s8 f_error;
@@ -2493,7 +2481,7 @@ static int bcm2048_vidioc_g_tuner(struct file *file, void *priv,
 }
 
 static int bcm2048_vidioc_s_tuner(struct file *file, void *priv,
-		const struct v4l2_tuner *tuner)
+				  const struct v4l2_tuner *tuner)
 {
 	struct bcm2048_device *bdev = video_get_drvdata(video_devdata(file));
 
@@ -2507,7 +2495,7 @@ static int bcm2048_vidioc_s_tuner(struct file *file, void *priv,
 }
 
 static int bcm2048_vidioc_g_frequency(struct file *file, void *priv,
-		struct v4l2_frequency *freq)
+				      struct v4l2_frequency *freq)
 {
 	struct bcm2048_device *bdev = video_get_drvdata(video_devdata(file));
 	int err = 0;
@@ -2528,7 +2516,7 @@ static int bcm2048_vidioc_g_frequency(struct file *file, void *priv,
 }
 
 static int bcm2048_vidioc_s_frequency(struct file *file, void *priv,
-		const struct v4l2_frequency *freq)
+				      const struct v4l2_frequency *freq)
 {
 	struct bcm2048_device *bdev = video_get_drvdata(video_devdata(file));
 	int err;
@@ -2546,7 +2534,7 @@ static int bcm2048_vidioc_s_frequency(struct file *file, void *priv,
 }
 
 static int bcm2048_vidioc_s_hw_freq_seek(struct file *file, void *priv,
-					const struct v4l2_hw_freq_seek *seek)
+					 const struct v4l2_hw_freq_seek *seek)
 {
 	struct bcm2048_device *bdev = video_get_drvdata(video_devdata(file));
 	int err;
@@ -2559,7 +2547,7 @@ static int bcm2048_vidioc_s_hw_freq_seek(struct file *file, void *priv,
 
 	err = bcm2048_set_fm_search_mode_direction(bdev, seek->seek_upward);
 	err |= bcm2048_set_fm_search_tune_mode(bdev,
-			BCM2048_FM_AUTO_SEARCH_MODE);
+					       BCM2048_FM_AUTO_SEARCH_MODE);
 
 	return err;
 }
@@ -2594,7 +2582,7 @@ static struct video_device bcm2048_viddev_template = {
  *	I2C driver interface
  */
 static int bcm2048_i2c_driver_probe(struct i2c_client *client,
-					const struct i2c_device_id *id)
+				    const struct i2c_device_id *id)
 {
 	struct bcm2048_device *bdev;
 	int err;
@@ -2613,8 +2601,8 @@ static int bcm2048_i2c_driver_probe(struct i2c_client *client,
 
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


