X-GM-THRID: 6200017795364683776
X-Received: by 10.152.22.101 with SMTP id c5mr4575659laf.0.1443554133948;
        Tue, 29 Sep 2015 12:15:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.108.133 with SMTP id hk5ls833923wib.7.canary; Tue, 29 Sep
 2015 12:15:32 -0700 (PDT)
X-Received: by 10.194.118.65 with SMTP id kk1mr4583895wjb.5.1443554132837;
        Tue, 29 Sep 2015 12:15:32 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id k7si879685wif.1.2015.09.29.12.15.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 12:15:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id ge5so164356355wic.0
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Sep 2015 12:15:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ClY6gEqjK66QpkwSoWnLCby8+zqEC1rlQQpLeu9geWU=;
        b=SAjDC2QEvNzEy4F3IkkJ0X5z3QVCKvnHY3tb8k0koB+e89nIXz8h9miAUmnGYTu1jb
         3/zr9kfq/2pxs0quYVldq4LJX3jHw5/wcYufcMG8wZ6yrTqjK24Byke5VMPajk1qhg/F
         8PK6VxcMSBDTKVmRZwFpG2608Z/5U7Zm/To3C1nA77TzfN/K3U4aY+s38UFboGQQuIiA
         d7+RdP9H6kcM56yRtiAXzrRvuM41PzvgyMpo2SPiYmA4muGeymIHYdTJGL+1nii3SvoY
         Z6AR58gRlJ1YHsApJY9QRKgnM+D0f2aUoAB+j+Huzu90g6aIIl5/RNjSBUVj87k+UXsS
         KBzw==
X-Received: by 10.180.101.198 with SMTP id fi6mr338332wib.25.1443554132723;
        Tue, 29 Sep 2015 12:15:32 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id nf15sm25350284wic.22.2015.09.29.12.15.31
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 29 Sep 2015 12:15:32 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: fbtbt:  show() methods should use scnprintf()
Date: Tue, 29 Sep 2015 21:15:23 +0200
Message-Id: <1443554123-15360-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

snprintf() may return a value that exceeds its second argument,
show() methods should use scnprintf() instead of snprintf().

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/fbtft/fbtft-sysfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fbtft-sysfs.c b/drivers/staging/fbtft/fbtft-sysfs.c
index 8d8bd12..36a1f4e 100644
--- a/drivers/staging/fbtft/fbtft-sysfs.c
+++ b/drivers/staging/fbtft/fbtft-sysfs.c
@@ -198,7 +198,7 @@ static ssize_t show_debug(struct device *device,
 	struct fb_info *fb_info = dev_get_drvdata(device);
 	struct fbtft_par *par = fb_info->par;
 
-	return snprintf(buf, PAGE_SIZE, "%lu\n", par->debug);
+	return scnprintf(buf, PAGE_SIZE, "%lu\n", par->debug);
 }
 
 static struct device_attribute debug_device_attr = \
-- 
1.9.1


