X-GM-THRID: 6332315727900442624
X-Received: by 10.66.135.10 with SMTP id po10mr5617126pab.91.1474358433461;
        Tue, 20 Sep 2016 01:00:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.36.151 with SMTP id f145ls3276797ita.17.gmail; Tue, 20 Sep
 2016 01:00:32 -0700 (PDT)
X-Received: by 10.107.168.98 with SMTP id r95mr5399021ioe.43.1474358432514;
        Tue, 20 Sep 2016 01:00:32 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id 7si5977271pfw.1.2016.09.20.01.00.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 01:00:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id vz6so569719pab.1
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 01:00:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=7GWr2U+1WVnUSEB3d1boriNP6qLEODjjmYhVVwCiFoU=;
        b=yB436qOh1lRX4E2Tx+2oyDUu26+pAMNQ/Fi6f6qedAsD5i9zRoyYv0oa55GC5g79V2
         5cFuE/2mTi9IkE02GD80Kc9FHeTmhDVbalH3uQ16gnNZ0ra84uHrhO9FSHc32MsM8wtp
         IIAHDfABH9VVuQxjE8JUGIH12sWVxN1Bnp+RRcsiNPggxbYa2V92S7Y1VtuwjKBoKnns
         9l388A4YOXhBjUot6AF1P+mfMdQ4H3V+2TpBERa/BJiPV8JkzgB2c+D1GmseQofHUZvX
         oklfaJ0uAKExnL+VIiEYJ8jSynlkz/blhPeG6seYdUQGwmqofgpmkvmE/I7GIZuHcn4q
         nKLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=7GWr2U+1WVnUSEB3d1boriNP6qLEODjjmYhVVwCiFoU=;
        b=L6ReImFYUoGa9DgdW0kyk5VwXaHkwSZKREEFQ/ug4Snl3x2S8rLPGzClihIaWJSUfO
         JOey7RBIfjlrE3iyrAmkVk0tw9b8zcb4NEzT0M0ks5aixbtsBdVHLWJLGOx6zcKtFkTf
         6kDSIKMGDCUY3kWsc/hW/e8eowPJsmzU09R1aMh4lb/jGMRf5jasdJTbk2I7CrWpBVbr
         z6fLcds8SfFcpTfPyHjzHNhnqMFZO4CW8Mp6Rclj5PiZ1X3tvKNPvqyzHBp0HPH2VWS4
         almc2YVWE2nSDbkxFPogpSTxm0JBFN1co1H5FfbfzWSni9pjfs+KMT2GyQrJ8uo1iJfm
         Jikg==
X-Gm-Message-State: AE9vXwP+1zb4rokojF+wZNWMIFnKrjg7AxuzaieNJHjHWY8wNWLU96az5Ix6S8WDowVepg==
X-Received: by 10.66.193.71 with SMTP id hm7mr39795111pac.164.1474358432067;
        Tue, 20 Sep 2016 01:00:32 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id uj8sm36772185pab.5.2016.09.20.01.00.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 01:00:31 -0700 (PDT)
Date: Tue, 20 Sep 2016 13:30:24 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 1/2] staging: media: bcm2048: Merge assignment with return
Message-ID: <d217a3d71cf410597ff6599e9c43315ef257174d.1474358156.git.aquannie@gmail.com>
References: <cover.1474358156.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474358156.git.aquannie@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Instead of storing the return value into a variable and then returning it, we
can club the two into a single return statement. This change was made using
the following semantic patch by Coccinelle:

@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
Change in v2:
Make the commit message clearer.

 drivers/staging/media/bcm2048/radio-bcm2048.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
index 8dade19..ea15cc6 100644
--- a/drivers/staging/media/bcm2048/radio-bcm2048.c
+++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
@@ -483,10 +483,8 @@ static int bcm2048_set_rds_no_lock(struct bcm2048_device *bdev, u8 rds_on)
 		memset(&bdev->rds_info, 0, sizeof(bdev->rds_info));
 	}
 
-	err = bcm2048_send_command(bdev, BCM2048_I2C_FM_RDS_SYSTEM,
-				   bdev->cache_fm_rds_system);
-
-	return err;
+	return bcm2048_send_command(bdev, BCM2048_I2C_FM_RDS_SYSTEM,
+				    bdev->cache_fm_rds_system);
 }
 
 static int bcm2048_get_rds_no_lock(struct bcm2048_device *bdev)
@@ -1834,9 +1832,7 @@ static int bcm2048_deinit(struct bcm2048_device *bdev)
 	if (err < 0)
 		return err;
 
-	err = bcm2048_set_power_state(bdev, BCM2048_POWER_OFF);
-
-	return err;
+	return bcm2048_set_power_state(bdev, BCM2048_POWER_OFF);
 }
 
 /*
@@ -1995,9 +1991,7 @@ static ssize_t bcm2048_##prop##_read(struct device *dev,		\
 									\
 	value = bcm2048_get_##prop(bdev);				\
 									\
-	value = sprintf(buf, mask "\n", value);				\
-									\
-	return value;							\
+	return sprintf(buf, mask "\n", value);				\
 }
 
 #define DEFINE_SYSFS_PROPERTY(prop, signal, size, mask, check)		\
-- 
2.7.4


