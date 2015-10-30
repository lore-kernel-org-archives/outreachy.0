X-GM-THRID: 6211224731753906176
X-Received: by 10.112.133.232 with SMTP id pf8mr1049040lbb.20.1446163452238;
        Thu, 29 Oct 2015 17:04:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.86.9 with SMTP id k9ls149798lfb.43.gmail; Thu, 29 Oct 2015
 17:04:11 -0700 (PDT)
X-Received: by 10.112.55.2 with SMTP id n2mr1056454lbp.9.1446163451649;
        Thu, 29 Oct 2015 17:04:11 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from mail-wm0-x233.google.com (mail-wm0-x233.google.com. [2a00:1450:400c:c09::233])
        by gmr-mx.google.com with ESMTPS id m135si4887wmb.0.2015.10.29.17.04.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 17:04:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c09::233 as permitted sender) client-ip=2a00:1450:400c:c09::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of brcnakalin@gmail.com designates 2a00:1450:400c:c09::233 as permitted sender) smtp.mailfrom=brcnakalin@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wm0-x233.google.com with SMTP id g8so548198wme.0
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 17:04:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=5zQXeASIhOq/8q/DDGsiwBvt/GaW5+IFphHLZZyhe7k=;
        b=bhj2IuBOViYCV2r76QsY60M31ZKYf2E9hceGDpm3fv+HirvCV+J3+gQT1Tli7nLfba
         Q+Fw0T85qtTFju6Q7xh02Uj1lL+7/7V/klLLgFLGAZUS3NQLcPZNK0HlkMh2+ZSpTxJR
         9A1HWo8BlWaImeOOw6/hy3TYvA2PDMALqoxRMrPnwaSONmowDWEZ3vpFHgE9wYczsnPY
         y+YuXVgaxds9ftwFNbS2zv3Eu815SOQHCpMMf0TWr7diSsI6V40P1UhgRCXg1Bc+64jt
         YhtFt6ud/7N0eQA4M7H+pKrXbcm7ekfh7gwe3PujLAEIj2qXkEOrRkI7fevAL9UooA4v
         hgLg==
X-Received: by 10.28.211.70 with SMTP id k67mr45499wmg.38.1446163451509;
        Thu, 29 Oct 2015 17:04:11 -0700 (PDT)
Return-Path: <brcnakalin@gmail.com>
Received: from localhost.localdomain ([78.182.227.7])
        by smtp.gmail.com with ESMTPSA id z4sm4233262wjz.29.2015.10.29.17.04.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 29 Oct 2015 17:04:10 -0700 (PDT)
From: Burcin Akalin <brcnakalin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Burcin Akalin <brcnakalin@gmail.com>
Subject: [PATCH] staging: nvec: Add space around '>>'
Date: Fri, 30 Oct 2015 03:04:03 +0300
Message-Id: <1446163443-1203-1-git-send-email-brcnakalin@gmail.com>
X-Mailer: git-send-email 1.9.1

Add space around operator '>>'. Problem found using
checkpatch.pl
CHECK: spaces preferred around that '>>' (ctx:VxV)

Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
---
 drivers/staging/nvec/nvec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
index 2cc0efc..4ae44a5 100644
--- a/drivers/staging/nvec/nvec.c
+++ b/drivers/staging/nvec/nvec.c
@@ -740,7 +740,7 @@ static void tegra_init_i2c_slave(struct nvec_chip *nvec)
 	writel(I2C_SL_NEWSL, nvec->base + I2C_SL_CNFG);
 	writel(0x1E, nvec->base + I2C_SL_DELAY_COUNT);
 
-	writel(nvec->i2c_addr>>1, nvec->base + I2C_SL_ADDR1);
+	writel(nvec->i2c_addr >> 1, nvec->base + I2C_SL_ADDR1);
 	writel(0, nvec->base + I2C_SL_ADDR2);
 
 	enable_irq(nvec->irq);
-- 
1.9.1


