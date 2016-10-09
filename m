X-GM-THRID: 6338573306714652672
X-Received: by 10.159.40.73 with SMTP id c67mr7072083uac.23.1475982630712;
        Sat, 08 Oct 2016 20:10:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.147 with SMTP id u19ls6416340ota.0.gmail; Sat, 08 Oct
 2016 20:10:30 -0700 (PDT)
X-Received: by 10.13.198.67 with SMTP id i64mr7084409ywd.140.1475982630228;
        Sat, 08 Oct 2016 20:10:30 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x242.google.com (mail-vk0-x242.google.com. [2607:f8b0:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id p70si269037vkd.0.2016.10.08.20.10.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 20:10:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) client-ip=2607:f8b0:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x242.google.com with SMTP id b186so3140787vkb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 20:10:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=6qxCBTCNA+esd/hk/YUyPDdPb00Ckx8+7SIKPrOoaEI=;
        b=tfAu/cZv9TaXbtp6W6/y8pplqAiB+wcFo2X9VQ3yLQ/cHCI+PNwfJGQKtgv/LgwD0f
         FDsUcjurT40OLF8gU7h6KHmdExq3jKxwfjMdLJsymI0k5YwvUOTO4zUqjq6pemHF5UdM
         qrW4tZNFdOdT8Vy/3WKT8bFWYNaZvmTD3LWMam5RPnttnVEOR3ihStHgKBciRcM+96FY
         xmnlrsco9/m2oRlXUsYDtJtwaQxoEEqxl9aw5UvmO7rFglHBuilY4e47tVXS906Rcj8X
         U2NGpNtcKdBVHwZML7SpElQsLgNHzzu3qqnOm+YYuZ0MVLcVb1a5/GpsgWlAQcttIrwW
         p6cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=6qxCBTCNA+esd/hk/YUyPDdPb00Ckx8+7SIKPrOoaEI=;
        b=OVZ6+3voXRWOaHcWtqBMfrRc1HnPzbtkg0U9WgxkrMVz0AXG3VQFXwahQuHn+kQgJm
         VV6iOD4wTPYNhNcJjgW1Dovyq4txCUV3qJOOhRj5bq7fJJKuCwRyIr/vggh8bUXgnsj7
         ifbKpEEsPJITWGi7p4sVN2sZpDJ+xo2H0yE0qk9p/uFBvXREma0HUhxq0csU9/+D083h
         Q/mCwp1WlRTN09BsIKfy3Sogl519xJpiOagQFYsrrYAOArJTmW86L4ixspBBoR5+mOaq
         TjMOdv3WDK4oFwT9DSjZ6ZIHRltHq7AK+Bf4lIU1uArCa5JO7zVU6DzC0OsaEzU9hTNo
         tF1A==
X-Gm-Message-State: AA6/9Rkj3JJ7v9o3VYn8vHfFzpLBB6fuk56QrsSfxl+25cQ4kNLNOPNMii+0PFEPLj2qPQ==
X-Received: by 10.31.182.71 with SMTP id g68mr7505200vkf.135.1475982630055;
        Sat, 08 Oct 2016 20:10:30 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id f189sm7818256vka.14.2016.10.08.20.10.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 20:10:29 -0700 (PDT)
Date: Sun, 9 Oct 2016 00:10:23 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/4] staging: wilc1000: Replace printk() with pr_info().
Message-ID: <20161009031023.GA11944@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch warning:

WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then dev_info(dev, ... then pr_info(...  to printk(KERN_INFO ...

Replace printk(KERN_INFO...) by pr_info() for more uniform error reporting.

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---
 drivers/staging/wilc1000/wilc_debugfs.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_debugfs.c b/drivers/staging/wilc1000/wilc_debugfs.c
index 802bb1d..07260c4 100644
--- a/drivers/staging/wilc1000/wilc_debugfs.c
+++ b/drivers/staging/wilc1000/wilc_debugfs.c
@@ -62,16 +62,16 @@ static ssize_t wilc_debug_level_write(struct file *filp, const char __user *buf,
 		return ret;
 
 	if (flag > DBG_LEVEL_ALL) {
-		printk("%s, value (0x%08x) is out of range, stay previous flag (0x%08x)\n", __func__, flag, atomic_read(&WILC_DEBUG_LEVEL));
+		pr_info("%s, value (0x%08x) is out of range, stay previous flag (0x%08x)\n", __func__, flag, atomic_read(&WILC_DEBUG_LEVEL));
 		return -EINVAL;
 	}
 
 	atomic_set(&WILC_DEBUG_LEVEL, (int)flag);
 
 	if (flag == 0)
-		printk(KERN_INFO "Debug-level disabled\n");
+		pr_info("Debug-level disabled\n");
 	else
-		printk(KERN_INFO "Debug-level enabled\n");
+		pr_info("Debug-level enabled\n");
 
 	return count;
 }
-- 
2.7.4


