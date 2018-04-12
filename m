X-GM-THRID: 6543657547525521408
X-Received: by 2002:a17:902:268:: with SMTP id 95-v6mr753514plc.5.1523563998847;
        Thu, 12 Apr 2018 13:13:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8f8b:: with SMTP id z11-v6ls2139677plo.11.gmail;
 Thu, 12 Apr 2018 13:13:17 -0700 (PDT)
X-Google-Smtp-Source: AIpwx4/CmcAiCSefoKtTjpyGZVhSehYt78zeCaFCjpRjdWr9JD4TDLAFrhec+MybqB9l/4g90yhK
X-Received: by 2002:a17:902:1763:: with SMTP id i90-v6mr769324pli.10.1523563997371;
        Thu, 12 Apr 2018 13:13:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1523563997; cv=none;
        d=google.com; s=arc-20160816;
        b=R3ADTGH1Heo5JUZLkoRC2d57SesqADihspYX84SpCTAFx1wjKr4G8DwyjMiRNUNRVI
         95tOA3wFwbchv6XyZ2QYJ9zvcjz0044g80JMk/7bkHYBxgVErBXsGzrEOf5BObWyyw9S
         YU2d0IsfC9WkTLueXH4ZjEiuduRR84B6cESgYKy7CBiEgbXc+ZoLzQGisq8t8JHV++Qn
         8ry47aEhI/i+iu+mQkBGhPbKJbIwnOXUWNKrwDl+kzqf309lBP5alI4QCNNN530QwDra
         qXrTQv5jcYhcUz1uLDQiiqyH+rved6ebMNnTteIdKKwYTdLXraLRggjF02NXVm3FN3Hp
         UMoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=xzTIxPGDG3J4UMphLp0hN/byXVCuGtmEHV/POiV/0zU=;
        b=sAjbf8zo/UkAasz3K9V488DMKl5AZ09t75yXrF1U3Cb5Xh9PqC7zVWIhA/bAL+9kQ6
         ZK18frZYTYDsnDEgWYmNQj5okIthX0dvUGlr+1dIlp0gnSWOi8WhR2KP9hi1mKfB6If4
         eaRSwv0ldV3O73Td2GxiVYtGPl/8SduETloss+zSNPV4cK+fD2KeKMtNm1w+A+wD0lqL
         XSHzWdBPaoQAeByuWtdcEAlZaVjomVBgTiEFqOTXfSZ/4yzztEZI53hGbw1JbPRQP1T7
         EUe3g3IxlWyXeN6W7KCzD8nPTZcT+PlJCPVwTeZMY1RHnFtJb58nOKdsrDYBB83tj73+
         tezA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=CciDmcnj;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id c23si402689pfc.5.2018.04.12.13.13.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Apr 2018 13:13:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=CciDmcnj;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pf0-x241.google.com with SMTP id o16so4662392pfk.9
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Apr 2018 13:13:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=xzTIxPGDG3J4UMphLp0hN/byXVCuGtmEHV/POiV/0zU=;
        b=CciDmcnjdw8l9g/m01BHzt7pGgSSyuf8IjOAWkpLWBTLYjirRqF3d6/LR59rHNMkOz
         w+RTyvuiaPVbsztG6lY2zx+jp2E+/2lAnmq4JuICVH6l3p4zDBXHJ073L0pC83jnoWzy
         R1kZCSPmmAlvXkmvtB9Rzx8fr013HNShyzlKw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=xzTIxPGDG3J4UMphLp0hN/byXVCuGtmEHV/POiV/0zU=;
        b=rjH+uQJFfkwqCLQ3M2g45Dc36bHj4ZMO+BdjdxCUW23+lPrW8M0eI06SDTfrCRFg0n
         7SDoh3Q2yGJg68gcvf/uHJjA4TCqzjyhvhcoUTlbLMVqrxgwW3BnSZYwxWEhEXoLRX5g
         79d5NReCKrefz4JG7RY6026WOZZ9+EnuPkVI5MPKPBocto41J/Oj1/L2WO4FpQKVB52g
         5c7m9IYq7F3ancTdgC7gSK2/n99xjuR2oPptFiPr9DCU/I569gk4pffg0KxFmQFi+WVX
         Z9P5liYPgWc2bRGi4oyMdjHOHl6UUMaYfCcVLHRqeXASCbuPx8bW6L27V2Y8vLSOb9ll
         6P4Q==
X-Gm-Message-State: ALQs6tCG7B3BEx+V0lZhqI62HeeIjtJfRmzLqGyHo0XKygOailquYvQ0
	xoQ0rm9QP1wVC1F6AS7JuyBCHE1Q
X-Received: by 10.98.92.129 with SMTP id q123mr1009769pfb.252.1523563996715;
        Thu, 12 Apr 2018 13:13:16 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id z65sm8418844pgz.24.2018.04.12.13.13.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 12 Apr 2018 13:13:15 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	mchehab@kernel.org
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH] Match alignment with parentheses
Date: Thu, 12 Apr 2018 20:13:00 +0000
Message-Id: <1523563980-21587-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Match alignments with open parentheses. Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 90c4ddd..56dd4f9 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -780,44 +780,44 @@ ipipe_set_3d_lut_params(struct vpfe_ipipe_device *ipipe, void *param)
 static int ipipe_validate_rgb2yuv_params(struct vpfe_ipipe_rgb2yuv *rgb2yuv)
 {
 	if (rgb2yuv->coef_ry.decimal > RGB2YCBCR_COEF_DECI_MASK ||
-	   rgb2yuv->coef_ry.integer > RGB2YCBCR_COEF_INT_MASK)
+	    rgb2yuv->coef_ry.integer > RGB2YCBCR_COEF_INT_MASK)
 		return -EINVAL;
 
 	if (rgb2yuv->coef_gy.decimal > RGB2YCBCR_COEF_DECI_MASK ||
-	   rgb2yuv->coef_gy.integer > RGB2YCBCR_COEF_INT_MASK)
+	    rgb2yuv->coef_gy.integer > RGB2YCBCR_COEF_INT_MASK)
 		return -EINVAL;
 
 	if (rgb2yuv->coef_by.decimal > RGB2YCBCR_COEF_DECI_MASK ||
-	   rgb2yuv->coef_by.integer > RGB2YCBCR_COEF_INT_MASK)
+	    rgb2yuv->coef_by.integer > RGB2YCBCR_COEF_INT_MASK)
 		return -EINVAL;
 
 	if (rgb2yuv->coef_rcb.decimal > RGB2YCBCR_COEF_DECI_MASK ||
-	   rgb2yuv->coef_rcb.integer > RGB2YCBCR_COEF_INT_MASK)
+	    rgb2yuv->coef_rcb.integer > RGB2YCBCR_COEF_INT_MASK)
 		return -EINVAL;
 
 	if (rgb2yuv->coef_gcb.decimal > RGB2YCBCR_COEF_DECI_MASK ||
-	   rgb2yuv->coef_gcb.integer > RGB2YCBCR_COEF_INT_MASK)
+	    rgb2yuv->coef_gcb.integer > RGB2YCBCR_COEF_INT_MASK)
 		return -EINVAL;
 
 	if (rgb2yuv->coef_bcb.decimal > RGB2YCBCR_COEF_DECI_MASK ||
-	   rgb2yuv->coef_bcb.integer > RGB2YCBCR_COEF_INT_MASK)
+	    rgb2yuv->coef_bcb.integer > RGB2YCBCR_COEF_INT_MASK)
 		return -EINVAL;
 
 	if (rgb2yuv->coef_rcr.decimal > RGB2YCBCR_COEF_DECI_MASK ||
-	   rgb2yuv->coef_rcr.integer > RGB2YCBCR_COEF_INT_MASK)
+	    rgb2yuv->coef_rcr.integer > RGB2YCBCR_COEF_INT_MASK)
 		return -EINVAL;
 
 	if (rgb2yuv->coef_gcr.decimal > RGB2YCBCR_COEF_DECI_MASK ||
-	   rgb2yuv->coef_gcr.integer > RGB2YCBCR_COEF_INT_MASK)
+	    rgb2yuv->coef_gcr.integer > RGB2YCBCR_COEF_INT_MASK)
 		return -EINVAL;
 
 	if (rgb2yuv->coef_bcr.decimal > RGB2YCBCR_COEF_DECI_MASK ||
-	   rgb2yuv->coef_bcr.integer > RGB2YCBCR_COEF_INT_MASK)
+	    rgb2yuv->coef_bcr.integer > RGB2YCBCR_COEF_INT_MASK)
 		return -EINVAL;
 
 	if (rgb2yuv->out_ofst_y > RGB2YCBCR_OFST_MASK ||
-	   rgb2yuv->out_ofst_cb > RGB2YCBCR_OFST_MASK ||
-	   rgb2yuv->out_ofst_cr > RGB2YCBCR_OFST_MASK)
+	    rgb2yuv->out_ofst_cb > RGB2YCBCR_OFST_MASK ||
+	    rgb2yuv->out_ofst_cr > RGB2YCBCR_OFST_MASK)
 		return -EINVAL;
 
 	return 0;
-- 
2.7.4


