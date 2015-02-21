X-GM-THRID: 1823794528256
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d1e136728869a0ba,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.181.198 with SMTP id dy6mr321886lbc.22.1424527651247;
        Sat, 21 Feb 2015 06:07:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.198.231 with SMTP id jf7ls387817lac.92.gmail; Sat, 21 Feb
 2015 06:07:30 -0800 (PST)
X-Received: by 10.112.77.101 with SMTP id r5mr325475lbw.4.1424527650627;
        Sat, 21 Feb 2015 06:07:30 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-we0-x234.google.com (mail-we0-x234.google.com. [2a00:1450:400c:c03::234])
        by gmr-mx.google.com with ESMTPS id cl5si309743wib.3.2015.02.21.06.07.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 06:07:30 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) client-ip=2a00:1450:400c:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wevl61 with SMTP id l61so6173592wev.2
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 06:07:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=9n+ARIxIi9gJFkOGPSK8ETJBPjDSwHiwD8BAzNyOqBs=;
        b=yr0oYDjQ7oYUkZHueD+d1MsDttp16wGXVIVRylmDsAyUyPwSWYbuA906bReQPhm1mU
         kSIvEB+4STYCrKLbam+LL/iiFziPzk1On5T36fqRZuVH0orfu0KWHq+Oa8RjvE2b26Ow
         0Frx+REbsmpuTklP3/KW20JB3nhz5fgZBgJJCVIMO9VZS9M/KlT648DUERs+2ENQpgNT
         0s+15WT6FUP8fb1pKx/mnSX0STCMgajxRuV+7lcSSl9LldfCMfMzZDv2axTjUAEJCz5U
         jc7wNhfLjmrxO/ktYCC37GYF/s8UvuoRhWv82/qDcoxib4qy/bZI7Pk6cjTJkg6AMp9k
         yfmQ==
X-Received: by 10.194.134.105 with SMTP id pj9mr4701111wjb.143.1424527650538;
        Sat, 21 Feb 2015 06:07:30 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id dj4sm46785238wjc.13.2015.02.21.06.07.29
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 06:07:29 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 2/3] Staging: rtl8192u: Convert comment from C99 to C89 style
Date: Sat, 21 Feb 2015 15:07:23 +0100
Message-Id: <0a8f9874305de440b504d0d66c9682eb2cc8b702.1424527587.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424527587.git.ksenija.stanojevic@gmail.com>
References: <cover.1424527587.git.ksenija.stanojevic@gmail.com>

Kernel style for comments is C89 style. Issue found by checkpatch.pl.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/r8190_rtl8256.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8190_rtl8256.h b/drivers/staging/rtl8192u/r8190_rtl8256.h
index ddddd70..7a5a388 100644
--- a/drivers/staging/rtl8192u/r8190_rtl8256.h
+++ b/drivers/staging/rtl8192u/r8190_rtl8256.h
@@ -13,7 +13,7 @@
 #ifndef RTL8225H
 #define RTL8225H
 
-#define RTL819X_TOTAL_RF_PATH 2 //for 8192U
+#define RTL819X_TOTAL_RF_PATH 2 /* for 8192U */
 extern void PHY_SetRF8256Bandwidth(struct net_device *dev, HT_CHANNEL_WIDTH Bandwidth);
 extern void PHY_RF8256_Config(struct net_device *dev);
 extern void phy_RF8256_Config_ParaFile(struct net_device *dev);
-- 
1.9.1


