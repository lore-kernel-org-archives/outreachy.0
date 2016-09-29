X-GM-THRID: 6335244935171670016
X-Received: by 10.28.166.132 with SMTP id p126mr919703wme.18.1475150363675;
        Thu, 29 Sep 2016 04:59:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.92.156 with SMTP id u28ls91385lfi.3.gmail; Thu, 29 Sep 2016
 04:59:23 -0700 (PDT)
X-Received: by 10.25.16.93 with SMTP id f90mr27679lfi.30.1475150363012;
        Thu, 29 Sep 2016 04:59:23 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id p199si224200wmd.1.2016.09.29.04.59.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 04:59:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id w72so1737348wmf.1
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Sep 2016 04:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=5wkr2Ia+UwePRPpKKeeAvA/R7E3heFVOhSId/NM61tE=;
        b=FE1aB+ys5+XpTVdjW0rMZBckHRY1e5zYgWQrsYCxwDFFX+QPyiypiuinx9u9muYZM4
         uu4MUYB17vYEbSnhY0mAx2DshkWh0AF57IdkMjj0Fb7Dll1kpGQKvgkX4igSAmzDCIOU
         FniaWunrRHTpEEHjrdIJzzcVAxlLxJ4uAWNLv4YvX5hEVT9lAhuTyATVVUQxZCO3vw4Q
         M7fVT0IwP/aIBKUtPU3WuqrHZyZpvadWsBv2x2Xb3goOIFG+lbYyaS22aGngSZPOXgdb
         zMBuQzyDTXYizcBH1KUjfLOy+AlAmPoTSUIO9KR5MPi1p7sGCqA0wO/lFWAwoiws5jy1
         qXaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=5wkr2Ia+UwePRPpKKeeAvA/R7E3heFVOhSId/NM61tE=;
        b=XoLf1gLXF5DfSOz/yEfUfe7FCPat2efpd8rYYnKxzFxT84NwCFxV61nJJs9lnl/8mH
         N/EXI4ywmHJkotYJvtb0gkKXXAqPSKZhn/eg94saNJsv6kmjq5NcVyaSt3NERcHfFb7U
         eO5HvtmQkn9DEwbDSzdIdyqkJ2EEBhqw4epYPKy8HLUeePpTV+Na3W/+BrUX9YTQ+ue+
         bNxDtAAjSfhlp0/ZcXDpkOmOx2tOnvIjTU/8xhzPvLgKgMdcZIMVuaLbV7YKgOaaSV6R
         4keVJbfNoO3QKhXl0StLk1AbqcaWjztnMgLjhEnNg3DHAxVqq9SL1U99NcjADbqkTvbj
         gs8A==
X-Gm-Message-State: AA6/9RmU4lSA0MBXdUeGvq1FwJ+uhWVh/po3laCSDivv8Pe8J13XXS+oH0uRSlUqM3Hf2A==
X-Received: by 10.194.105.37 with SMTP id gj5mr1314343wjb.113.1475150362539;
        Thu, 29 Sep 2016 04:59:22 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([109.166.128.1])
        by smtp.gmail.com with ESMTPSA id uw3sm13787182wjb.21.2016.09.29.04.59.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 29 Sep 2016 04:59:21 -0700 (PDT)
Date: Thu, 29 Sep 2016 14:59:20 +0300
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging : media: bcm2048: radio-bcm2048.c: Use unsigned
 int rather than unisigned
Message-ID: <20160929115919.GA21039@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace the unsigned with the unsigned int,to decrease the programming
errors that can give the usage of simply unsigned.

Warning found by checkpatch.pl :

WARNING: Prefer 'unsigned int' to bare use of 'unsigned'.

Signed-off-by: Muraru Mihaela <mihaela.muraru21@gmail.com>

---

Changes in v2:
	- specify the type of the parameter type from function
	bcm2048_prop_write as unsigned int.
	This reduce the compiling problem and reduce to silent the checker.
---
 drivers/staging/media/bcm2048/radio-bcm2048.c | 46 +++++++++++++--------------
 1 file changed, 23 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
index ea15cc6..4f73bda 100644
--- a/drivers/staging/media/bcm2048/radio-bcm2048.c
+++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
@@ -1942,7 +1942,7 @@ static ssize_t bcm2048_##prop##_write(struct device *dev,		\
 					size_t count)			\
 {									\
 	struct bcm2048_device *bdev = dev_get_drvdata(dev);		\
-	type value;							\
+	unsigned int value;						\
 	int err;							\
 									\
 	if (!bdev)							\
@@ -2022,27 +2022,27 @@ static ssize_t bcm2048_##prop##_read(struct device *dev,		\
 	return count;							\
 }
 
-DEFINE_SYSFS_PROPERTY(power_state, unsigned, int, "%u", 0)
-DEFINE_SYSFS_PROPERTY(mute, unsigned, int, "%u", 0)
-DEFINE_SYSFS_PROPERTY(audio_route, unsigned, int, "%u", 0)
-DEFINE_SYSFS_PROPERTY(dac_output, unsigned, int, "%u", 0)
-
-DEFINE_SYSFS_PROPERTY(fm_hi_lo_injection, unsigned, int, "%u", 0)
-DEFINE_SYSFS_PROPERTY(fm_frequency, unsigned, int, "%u", 0)
-DEFINE_SYSFS_PROPERTY(fm_af_frequency, unsigned, int, "%u", 0)
-DEFINE_SYSFS_PROPERTY(fm_deemphasis, unsigned, int, "%u", 0)
-DEFINE_SYSFS_PROPERTY(fm_rds_mask, unsigned, int, "%u", 0)
-DEFINE_SYSFS_PROPERTY(fm_best_tune_mode, unsigned, int, "%u", 0)
-DEFINE_SYSFS_PROPERTY(fm_search_rssi_threshold, unsigned, int, "%u", 0)
-DEFINE_SYSFS_PROPERTY(fm_search_mode_direction, unsigned, int, "%u", 0)
-DEFINE_SYSFS_PROPERTY(fm_search_tune_mode, unsigned, int, "%u", value > 3)
-
-DEFINE_SYSFS_PROPERTY(rds, unsigned, int, "%u", 0)
-DEFINE_SYSFS_PROPERTY(rds_b_block_mask, unsigned, int, "%u", 0)
-DEFINE_SYSFS_PROPERTY(rds_b_block_match, unsigned, int, "%u", 0)
-DEFINE_SYSFS_PROPERTY(rds_pi_mask, unsigned, int, "%u", 0)
-DEFINE_SYSFS_PROPERTY(rds_pi_match, unsigned, int, "%u", 0)
-DEFINE_SYSFS_PROPERTY(rds_wline, unsigned, int, "%u", 0)
+DEFINE_SYSFS_PROPERTY(power_state, unsigned int, int, "%u", 0)
+DEFINE_SYSFS_PROPERTY(mute, unsigned int, int, "%u", 0)
+DEFINE_SYSFS_PROPERTY(audio_route, unsigned int, int, "%u", 0)
+DEFINE_SYSFS_PROPERTY(dac_output, unsigned int, int, "%u", 0)
+
+DEFINE_SYSFS_PROPERTY(fm_hi_lo_injection, unsigned int, int, "%u", 0)
+DEFINE_SYSFS_PROPERTY(fm_frequency, unsigned int, int, "%u", 0)
+DEFINE_SYSFS_PROPERTY(fm_af_frequency, unsigned int, int, "%u", 0)
+DEFINE_SYSFS_PROPERTY(fm_deemphasis, unsigned int, int, "%u", 0)
+DEFINE_SYSFS_PROPERTY(fm_rds_mask, unsigned int, int, "%u", 0)
+DEFINE_SYSFS_PROPERTY(fm_best_tune_mode, unsigned int, int, "%u", 0)
+DEFINE_SYSFS_PROPERTY(fm_search_rssi_threshold, unsigned int, int, "%u", 0)
+DEFINE_SYSFS_PROPERTY(fm_search_mode_direction, unsigned int, int, "%u", 0)
+DEFINE_SYSFS_PROPERTY(fm_search_tune_mode, unsigned int, int, "%u", value > 3)
+
+DEFINE_SYSFS_PROPERTY(rds, unsigned int, int, "%u", 0)
+DEFINE_SYSFS_PROPERTY(rds_b_block_mask, unsigned int, int, "%u", 0)
+DEFINE_SYSFS_PROPERTY(rds_b_block_match, unsigned int, int, "%u", 0)
+DEFINE_SYSFS_PROPERTY(rds_pi_mask, unsigned int, int, "%u", 0)
+DEFINE_SYSFS_PROPERTY(rds_pi_match, unsigned int, int, "%u", 0)
+DEFINE_SYSFS_PROPERTY(rds_wline, unsigned int, int, "%u", 0)
 property_read(rds_pi, unsigned int, "%x")
 property_str_read(rds_rt, (BCM2048_MAX_RDS_RT + 1))
 property_str_read(rds_ps, (BCM2048_MAX_RDS_PS + 1))
@@ -2054,7 +2054,7 @@ property_read(region_bottom_frequency, unsigned int, "%u")
 property_read(region_top_frequency, unsigned int, "%u")
 property_signed_read(fm_carrier_error, int, "%d")
 property_signed_read(fm_rssi, int, "%d")
-DEFINE_SYSFS_PROPERTY(region, unsigned, int, "%u", 0)
+DEFINE_SYSFS_PROPERTY(region, unsigned int, int, "%u", 0)
 
 static struct device_attribute attrs[] = {
 	__ATTR(power_state, S_IRUGO | S_IWUSR, bcm2048_power_state_read,
-- 
1.9.1


