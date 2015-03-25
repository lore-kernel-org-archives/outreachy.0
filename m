X-GM-THRID: 9866947067904
X-Received: by 10.182.168.105 with SMTP id zv9mr12725114obb.6.1427327685407;
        Wed, 25 Mar 2015 16:54:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.126.105 with SMTP id mx9ls510924obb.31.gmail; Wed, 25 Mar
 2015 16:54:45 -0700 (PDT)
X-Received: by 10.182.66.8 with SMTP id b8mr13184017obt.23.1427327685130;
        Wed, 25 Mar 2015 16:54:45 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from mail-qg0-x22a.google.com (mail-qg0-x22a.google.com. [2607:f8b0:400d:c04::22a])
        by gmr-mx.google.com with ESMTPS id e5si515854qcg.1.2015.03.25.16.54.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2015 16:54:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::22a as permitted sender) client-ip=2607:f8b0:400d:c04::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.fornazier@gmail.com designates 2607:f8b0:400d:c04::22a as permitted sender) smtp.mail=helen.fornazier@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22a.google.com with SMTP id 60so55538503qgf.3
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2015 16:54:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=jqZAatwrt2aC2bJbFhK2SC4bNuhgR0JLptzpoXiO2RY=;
        b=e0ro6FZhBHI7EH5Xsq9bQSiyNMeDBQCxkFN2t/yOf1su62wi+o5mTjoqqUxxDLTeZp
         EhHDaqy5cb4RhrKPfrzFcPN62nOxISmGc5bnwWLRTTue0dOtchQRMVKMMFz7JxTIqn8A
         gRlKgmVEewydDmRrToueNTGx9i/mPRnmYTdnHucEapFphZVIf2GhhkrwPh1sRXWjCXAU
         6RcRlsfLwM5Iuu76mwkxinYKZaxFOsNT4KsYvtT0zphm4A/DK0VvmwwzWLoy5CSPKO8p
         FPxYaiBgPqc6uOWmOAMajGBylC+AuHZZim+vSf+ImKauYtcRCzqZDWbMl6aw4IA/TlJ6
         et8g==
X-Received: by 10.55.40.9 with SMTP id o9mr23526663qkh.55.1427327685058;
        Wed, 25 Mar 2015 16:54:45 -0700 (PDT)
Return-Path: <helen.fornazier@gmail.com>
Received: from Cracker.linksys.com ([179.159.91.9])
        by mx.google.com with ESMTPSA id d30sm149831qgd.49.2015.03.25.16.54.43
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 25 Mar 2015 16:54:44 -0700 (PDT)
From: Helen Fornazier <helen.fornazier@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Helen Fornazier <helen.fornazier@gmail.com>
Subject: [PATCH] staging: fbtft: Add space around '='
Date: Wed, 25 Mar 2015 20:54:33 -0300
Message-Id: <1427327673-5342-1-git-send-email-helen.fornazier@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the checkpatch.pl error:

ERROR: spaces required around that '=' (ctx:VxV)
+                       sdev->bits_per_word=9;
                                           ^

Signed-off-by: Helen Fornazier <helen.fornazier@gmail.com>
---
 drivers/staging/fbtft/flexfb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/flexfb.c b/drivers/staging/fbtft/flexfb.c
index 90832c3..ca39fe9 100644
--- a/drivers/staging/fbtft/flexfb.c
+++ b/drivers/staging/fbtft/flexfb.c
@@ -423,7 +423,7 @@ static int flexfb_probe_common(struct spi_device *sdev, struct platform_device *
 			}
 			par->fbtftops.write_register = fbtft_write_reg8_bus9;
 			par->fbtftops.write_vmem = fbtft_write_vmem16_bus9;
-			sdev->bits_per_word=9;
+			sdev->bits_per_word = 9;
 			ret = sdev->master->setup(sdev);
 			if (ret) {
 				dev_warn(dev,
-- 
1.9.1


