X-GM-THRID: 6335244935171670016
X-Received: by 10.25.24.20 with SMTP id o20mr1554430lfi.20.1475039155921;
        Tue, 27 Sep 2016 22:05:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.63.23 with SMTP id m23ls73736wma.3.gmail; Tue, 27 Sep 2016
 22:05:55 -0700 (PDT)
X-Received: by 10.28.154.76 with SMTP id c73mr481784wme.20.1475039155351;
        Tue, 27 Sep 2016 22:05:55 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id 185si1296802wmr.2.2016.09.27.22.05.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Sep 2016 22:05:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id b184so4066492wma.3
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Sep 2016 22:05:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=MK+VfyzjUx/qhBC3EEFUg4mrNqVyzaNx5agcQ/W25CU=;
        b=GOI8rJKh/sEGDFletlphfzep+rBZ3GUMXXsTgHo4e/OE5ZubMyhUv3nn6etNas18i9
         Tyy94VqrzTP8Ou8WesHX0sTcG+Lruk6GKdSW1wYGxvHQyQOXMx/DVFr4XvF2dhhhx5Hg
         pr7EfCT6BZJXTLhv86bwItZhQpnDvM6cdYugDnUJddm2ITMzYnNJBKAEe7Ibfv8+UX3y
         XBnix6hzuhw2y0LPqRDG/zqFZmvLlLYK0MfsT7BEaSqKrl8RU+3jEB2gAwFgbRKHwlKh
         8z+DTaY169KyVD43xHBjFtOq8EFbVf6Yk4WcB1UltTNW5wVlDr65e8NZAxBQSA+RAhYe
         kfmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=MK+VfyzjUx/qhBC3EEFUg4mrNqVyzaNx5agcQ/W25CU=;
        b=Trgtb79LPo/BStZoOzaoQmZG5VJtsI3OVYktm4w8JbzL5LIMtEvCgjH/wgH822AAUd
         IVsf/H9coRZQ8XJibF8zsU9DCO3gMDQ5uqvAgU6mEBJkDXHnWpll7xTa3DplHOLLExs8
         mt6C64GpC5TpVaY4f07DEGOHhcCCZ6bOVYcsnIznKRp32mUJxNPnP0rjzmVp3n4u6d7y
         hdzeHVK7PDaKcFXFuL1M0I1f4DT0fwe/IacPThoO7+JR/zyk8zJQTy2/rPEk4IR2ThLC
         Y06bs3sIXxnL7cnpRkOhiMUhQ9KXSKeHpiHfpm5MNBxZhPSspPnHKu0Aj2Dc8+PoKomO
         sqZg==
X-Gm-Message-State: AA6/9RkOKK1M0rDO/+0hiK/HWi1I6EIDhvusxDFXUfv3gGoMxJGpUgoMVjnrJLYxzVUZwA==
X-Received: by 10.28.31.7 with SMTP id f7mr5792808wmf.69.1475039154946;
        Tue, 27 Sep 2016 22:05:54 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id l6sm6584047wmg.11.2016.09.27.22.05.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 27 Sep 2016 22:05:54 -0700 (PDT)
Date: Wed, 28 Sep 2016 08:05:53 +0300
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging :media :bcm2048 :radio-bcm2048.c : Use unsigned int
 rather than unisigned
Message-ID: <20160928050553.GA3106@domino-MS-16Y1>
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
 drivers/staging/media/bcm2048/radio-bcm2048.c | 44 +++++++++++++--------------
 1 file changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
index ea15cc6..3761621 100644
--- a/drivers/staging/media/bcm2048/radio-bcm2048.c
+++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
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


