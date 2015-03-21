X-GM-THRID: 9342022582272
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d29c9ec2710a016b,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.43.16.70 with SMTP id px6mr7427152icb.28.1426904314988;
        Fri, 20 Mar 2015 19:18:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.165.81 with SMTP id o78ls1468072ioe.89.gmail; Fri, 20 Mar
 2015 19:18:34 -0700 (PDT)
X-Received: by 10.43.64.143 with SMTP id xi15mr7424205icb.0.1426904314687;
        Fri, 20 Mar 2015 19:18:34 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-qc0-x22f.google.com (mail-qc0-x22f.google.com. [2607:f8b0:400d:c01::22f])
        by gmr-mx.google.com with ESMTPS id e5si823375qcg.1.2015.03.20.19.18.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2015 19:18:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c01::22f as permitted sender) client-ip=2607:f8b0:400d:c01::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c01::22f as permitted sender) smtp.mail=helen.fornazier@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qc0-x22f.google.com with SMTP id o4so108308552qct.3
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2015 19:18:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=wfOfTVvNT/MtWzdHN3aSravymsNb09KGyEKOYmeNED4=;
        b=qlvSOpjwH4hKHxXS3ZWmadH2KHWL1UIH6sZ84QSu5j84l6shSdDK06iOX7lS6Rt8qv
         FvshQG+yhopQn0BnscQVZj8mvbJKhkqQX4GpTuzUfc8toAKzKgiphjCSL8o8NhqITsDo
         5PpwjLJeZMON1f3LdiXz+n3+7nNcwSL7j/pWRKDaG/LCz7Id5WWFX0MjVieSOEch1J/e
         Y4wueMNiZMXtfGBJwzG4Qf01kaaZuC5A2F42fa4wIlEaHsVcC5KrZUaGNtloL1tWnaJB
         z9lpGeQIKlqfmA8eeokT/RniNxFTS7hARpvm1myRBGxU4ADLQILMppm27qhww1t/TnoY
         +RiA==
X-Received: by 10.55.26.167 with SMTP id l39mr141842848qkh.63.1426904314571;
        Fri, 20 Mar 2015 19:18:34 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from Cracker.wifi.univ-paris5.fr ([177.194.75.171])
        by mx.google.com with ESMTPSA id 69sm4324405qgh.5.2015.03.20.19.18.33
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Mar 2015 19:18:34 -0700 (PDT)
From: Helen Fornazier <helen.fornazier@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Helen Fornazier <helen.fornazier@gmail.com>
Subject: [PATCH] staging: fbtft: Fix indentation style by space
Date: Fri, 20 Mar 2015 23:18:10 -0300
Message-Id: <1426904290-15019-1-git-send-email-helen.fornazier@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the checkpatch.pl warning and error:

WARNING: please, no spaces at the start of a line

ERROR: code indent should use tabs where possible

Signed-off-by: Helen Fornazier <helen.fornazier@gmail.com>
---
 drivers/staging/fbtft/fbtft.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
index 0dbf3f9..36ecf02 100644
--- a/drivers/staging/fbtft/fbtft.h
+++ b/drivers/staging/fbtft/fbtft.h
@@ -326,8 +326,8 @@ static int fbtft_driver_remove_pdev(struct platform_device *pdev)          \
 }                                                                          \
 									   \
 static const struct of_device_id dt_ids[] = {                              \
-        { .compatible = _compatible },                                     \
-        {},                                                                \
+	{ .compatible = _compatible },                                     \
+	{},                                                                \
 };                                                                         \
 									   \
 MODULE_DEVICE_TABLE(of, dt_ids);                                           \
@@ -337,7 +337,7 @@ static struct spi_driver fbtft_driver_spi_driver = {                       \
 	.driver = {                                                        \
 		.name   = _name,                                           \
 		.owner  = THIS_MODULE,                                     \
-                .of_match_table = of_match_ptr(dt_ids),                    \
+		.of_match_table = of_match_ptr(dt_ids),                    \
 	},                                                                 \
 	.probe  = fbtft_driver_probe_spi,                                  \
 	.remove = fbtft_driver_remove_spi,                                 \
@@ -347,7 +347,7 @@ static struct platform_driver fbtft_driver_platform_driver = {             \
 	.driver = {                                                        \
 		.name   = _name,                                           \
 		.owner  = THIS_MODULE,                                     \
-                .of_match_table = of_match_ptr(dt_ids),                    \
+		.of_match_table = of_match_ptr(dt_ids),                    \
 	},                                                                 \
 	.probe  = fbtft_driver_probe_pdev,                                 \
 	.remove = fbtft_driver_remove_pdev,                                \
-- 
1.9.1


