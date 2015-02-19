X-GM-THRID: 791728357376
X-Received: by 10.112.64.171 with SMTP id p11mr827137lbs.12.1424376418737;
        Thu, 19 Feb 2015 12:06:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.42.136 with SMTP id o8ls201500lal.74.gmail; Thu, 19 Feb
 2015 12:06:57 -0800 (PST)
X-Received: by 10.152.45.7 with SMTP id i7mr823963lam.9.1424376417383;
        Thu, 19 Feb 2015 12:06:57 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x241.google.com (mail-wi0-x241.google.com. [2a00:1450:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id by11si176931wib.1.2015.02.19.12.06.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 12:06:57 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) client-ip=2a00:1450:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x241.google.com with SMTP id r20so4200669wiv.0
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 12:06:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=yUrsR0iEzBB6HRuwPswbXRGepXWHWqGUQAqxwf/NURU=;
        b=Z0k8LUUfS0Jsq10CCj++W970B5/lvEaMLEAgshZhlocluSRZWKE5VPRJc10qmRO4tw
         u3I+S4M6BGGJr8Gtg3ddzED06j9UiVLWx8KmeVKhNgrL3/Y0ayZtugmdJDk8WOzd6+3t
         ASi73bogn7GO20SAKlpMs+t1IeC2f7LVpXCGnLmfG/nf+fuT1YtRLJMjicIIpTEx5z1z
         IQ1JtvXOkZdOacVClOsZE6yjzbCLJQvPi1NKrAPJcdeveTbrbtaIEhm4Z2BlqmrGT+Le
         MLsLik3eoxqdr90LNBiZ5khBSHKfFL6C85I3qAmZfhYrqpz+vaAj/qF+MH2uEjfYmoU5
         CspQ==
X-Received: by 10.194.192.167 with SMTP id hh7mr12275994wjc.151.1424376417262;
        Thu, 19 Feb 2015 12:06:57 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id gm2sm25576194wib.5.2015.02.19.12.06.54
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Feb 2015 12:06:55 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: drivers: dma: ste_dma: Prefer kcalloc over kzalloc
Date: Thu, 19 Feb 2015 22:06:48 +0200
Message-Id: <1424376408-29567-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

WARNING: Prefer kcalloc over kzalloc with multiply
chackpatch.pl warning in ste_dma40.c

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/dma/ste_dma40.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma/ste_dma40.c b/drivers/dma/ste_dma40.c
index 308795e..5cffef1 100644
--- a/drivers/dma/ste_dma40.c
+++ b/drivers/dma/ste_dma40.c
@@ -3290,7 +3290,7 @@ static struct d40_base * __init d40_hw_detect_init(struct platform_device *pdev)
 		base->gen_dmac.init_reg_size = ARRAY_SIZE(dma_init_reg_v4a);
 	}
 
-	base->phy_res = kzalloc(num_phy_chans * sizeof(struct d40_phy_res),
+	base->phy_res = kcalloc(num_phy_chans * sizeof(struct d40_phy_res),
 				GFP_KERNEL);
 	if (!base->phy_res)
 		goto failure;
-- 
1.9.1


