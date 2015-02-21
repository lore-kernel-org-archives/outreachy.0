X-GM-THRID: 1804593004544
X-Received: by 10.152.45.7 with SMTP id i7mr299397lam.9.1424526580050;
        Sat, 21 Feb 2015 05:49:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.7.134 with SMTP id dc6ls327464lad.87.gmail; Sat, 21 Feb
 2015 05:49:39 -0800 (PST)
X-Received: by 10.112.159.227 with SMTP id xf3mr307207lbb.11.1424526579754;
        Sat, 21 Feb 2015 05:49:39 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-we0-x231.google.com (mail-we0-x231.google.com. [2a00:1450:400c:c03::231])
        by gmr-mx.google.com with ESMTPS id l8si506470wia.0.2015.02.21.05.49.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 05:49:39 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) client-ip=2a00:1450:400c:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::231 as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wevm14 with SMTP id m14so10255790wev.8
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 05:49:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=OYqiuQ7Jmg05vdXsvcWbh7fdxGw3Ln++uj2fRf8aql4=;
        b=Awi7MoSog8WD4sVHCdF0wJ2Myy7TIgBzN4brtJCX8GTP0kK4Ld+cYAoNSmUWpDtEhe
         v8/BEoRXrL2HdOfLQRMS9d19sHRjjKi2K+nnmX9ds9N9LDaKtDdEoJ7avEN35290DLVj
         TRLvZDT6s+Fdw+sdz/ruTDTVbhS3mlEPsgGBWqKY1dmCUGvN4ZbyXaqDtG34FvVkHpaX
         YiidINqItL/G/AdwdG3yQKOvWE9XR4s8dAFgvadkrlxTlF1ARXCHxgFUuIOWL6Snpqzr
         GX3zMkBVaG5uQ1cHMYGBYK8MY3aXCvjNmnym0ruydvDrVM9l/wa1wWgFr1yK6uBOfchF
         H0eQ==
X-Received: by 10.194.87.100 with SMTP id w4mr4633379wjz.65.1424526579634;
        Sat, 21 Feb 2015 05:49:39 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([78.187.192.150])
        by mx.google.com with ESMTPSA id ub1sm46716295wjc.43.2015.02.21.05.49.38
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 05:49:39 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: media: omap24xx: Fixed error "space prohibited before that close parenthesis ')'"
Date: Sat, 21 Feb 2015 15:49:43 +0200
Message-Id: <1424526583-11586-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

This patch fixes error 'space prohibited before that close parenthesis
')'' found by
checkpatch in driver media.

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/media/omap24xx/v4l2-int-device.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/omap24xx/v4l2-int-device.h b/drivers/staging/media/omap24xx/v4l2-int-device.h
index 0286c95..666b55f 100644
--- a/drivers/staging/media/omap24xx/v4l2-int-device.h
+++ b/drivers/staging/media/omap24xx/v4l2-int-device.h
@@ -292,7 +292,7 @@ V4L2_INT_WRAPPER_1(s_video_routing, struct v4l2_routing, *);
 
 V4L2_INT_WRAPPER_0(dev_init);
 V4L2_INT_WRAPPER_0(dev_exit);
-V4L2_INT_WRAPPER_1(s_power, enum v4l2_power, );
+V4L2_INT_WRAPPER_1(s_power, enum v4l2_power);
 V4L2_INT_WRAPPER_1(g_priv, void, *);
 V4L2_INT_WRAPPER_1(g_ifparm, struct v4l2_ifparm, *);
 V4L2_INT_WRAPPER_1(g_needs_reset, void, *);
-- 
1.8.3.2


