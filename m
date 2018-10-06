X-GM-THRID: 6609620704439566336
X-Received: by 2002:a62:854b:: with SMTP id u72-v6mr4293159pfd.16.1538929686934;
        Sun, 07 Oct 2018 09:28:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:47c7:: with SMTP id f7-v6ls4037717pgs.6.gmail; Sun, 07
 Oct 2018 09:28:06 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63HDHb2ADFGMxC/2xS3GBtJDybZzpXEBROQfg41+Pq3AhIhGRmXRb1TwtnIQ6O2MbCSHDkK
X-Received: by 2002:a62:e05a:: with SMTP id f87-v6mr9180268pfh.7.1538929686126;
        Sun, 07 Oct 2018 09:28:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538929686; cv=none;
        d=google.com; s=arc-20160816;
        b=ehJfpMr8xorpjmWyz/WobmAl1zmwGvgSsU5a0+VTdc3XvMjIetaA0KkjlvkM1JVyeO
         yF8CHp3n9OnOp0gLFVetWt3esCrnx+rMb0HfZlzbL8WAZwUFM1lFQBYj7kQnkpqLiu5d
         IcCessY4Sirvpra/hvybgz+r1ECBPkGnA3sH/ePY9rkyzqgOEMAKHElju8mrp3Bd7ExV
         3Wi60x04JHgUyI5CEJ8LTR9MgvUbqSlV2OTpa7HITOd661LHVIy+pH6y2hQlpJirvj2a
         /m5BAhar/5Vkr/jaZZfkOSMN2GkrtabnqeUW4icSNLIIzDRlje0GGeCkltwfVrN14YBX
         crYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=bkEDBoSn2Yy8BLv/gBpLYl8a20NADGsxq+difSr/930=;
        b=YhYP6z0iZMZ/Z+fgA63Demqjf6/C3A7HY6QQorg8qxFAScBULkfsA8t93TaQHIxVWy
         sMk8EHE4VfDXFKNfMdIm101Cvy3taTLTmbK4Yj7RhHBhirqcEQ/jT/2y0b++fKL6WtWR
         JaB3qYYCogHePU6IjUoatetkMOskrrz4DP/4tkF+GQ2Wybalq7Wd2b08zqXUFzxnqxtS
         G1SxgOeC82gGFmCLP14CNCbJVN4CLKYkkDwNEJwTTM2R2Fs9KOnnLt5rmRnDOYupkPx4
         Qkemgvs9+XOuwza1Bcz0KSmpVnFRly1p2r6GOf0hTeZtqu2Mn+HhBxpqS6CcffD/KanM
         JTVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FDpIx9KA;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id c4-v6si496393pls.4.2018.10.07.09.28.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Oct 2018 09:28:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FDpIx9KA;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id f26-v6so7087789pfn.9
        for <outreachy-kernel@googlegroups.com>; Sun, 07 Oct 2018 09:28:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=bkEDBoSn2Yy8BLv/gBpLYl8a20NADGsxq+difSr/930=;
        b=FDpIx9KAjlqK/UKNonRVpHrxBjn3UWE/qJX5G7geLbmj5p48dbLixjAsjClWxSI4AS
         VoeqVONlpeibwJ4eI65Xlyc9e+oEsnGOo30QWK1PR4t2ScO1DXHP5pzl+utzU1ud7LaL
         svc4r5xXnw31HAd3sL7YAY2QWWZwDZZtRpk0SDWW+oSowU0Ea+9nDz1U+A7xkqi6a+ZC
         BYvuUHNf8GFgvkDZ4ZZ2bZIG1+5CSnGhxm9sCkdkOAITm+6wByVhCoe1IlME9aSJBmF2
         4l+Hv/JVBmIw7D6SLHcQGVWX7vF7JX2U/nV5hXtnJ3D5TgHJRCc2dJXBQdZwUzqnnYJS
         xTmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=bkEDBoSn2Yy8BLv/gBpLYl8a20NADGsxq+difSr/930=;
        b=qZg32bfrTPbL/a3jI8cp8pRPgVA9ybh9Uhpqp0z8W6/OOM1MiL7cnFnuu/hJoqzFKh
         FHZEUzTOXfj1PKYIL+8sPMyr5Gsf2MvxUaKWstU38tGOuOzGGZ+t3Dmf4BQoei9mX93M
         ocLjUnGYVSXRvpx6khgAPMZtKtrn94YhUdw9YSXMrmcAQdVnRJeJ2ArYw1FEsJ33MOwX
         E1Vxytzn0Q96U+10RK3m8JxIcvOENsAqLzc3iw6RFYrZZFkE7bpx2T37LojPhjrMsEsC
         Lm+rwz+Gex9/JRzfReCOdhkvjbfequoyCfFc2VS1uX7ftrvAe+tjWm065+kNYncVJsgm
         WvCA==
X-Gm-Message-State: ABuFfojbqEf0gybISJQXOJsKbl2WUS9938Fq+TReUvZ/5eGMBbFXOPre
	PvDrjJawqjYEVUU/J8zpHuQ=
X-Received: by 2002:a63:545c:: with SMTP id e28-v6mr18023331pgm.316.1538929685634;
        Sun, 07 Oct 2018 09:28:05 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([117.207.206.206])
        by smtp.gmail.com with ESMTPSA id b3-v6sm20477357pfb.151.2018.10.07.09.28.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 07 Oct 2018 09:28:04 -0700 (PDT)
Date: Sun, 7 Oct 2018 03:58:19 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: mchehab@kernel.org, gregkh@linuxfoundation.org
Subject: [PATCH v4] staging: media: davinci_vpfe: Use __func__ instead of
 function name
Message-ID: <20181006222819.GA14461@armorer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Access current function name using __func__.
Use %s and __func__ instead of function name.
Use of predefined identifier __func__ prevents typo error in function
name in print calls.

Issue found with checkpatch.pl

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---
change in v4:
-Fix the commit message
 
change in v3:
  -change in commit message. 

change in v2:
  -Put useful information above --- 

 
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 9594276..4d09e81 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -695,21 +695,21 @@ static int ipipe_get_gamma_params(struct vpfe_ipipe_device *ipipe, void *param)
 
 	if (!gamma->bypass_r) {
 		dev_err(dev,
-			"ipipe_get_gamma_params: table ptr empty for R\n");
+			"%s: table ptr empty for R\n", __func__);
 		return -EINVAL;
 	}
 	memcpy(gamma_param->table_r, gamma->table_r,
 	       (table_size * sizeof(struct vpfe_ipipe_gamma_entry)));
 
 	if (!gamma->bypass_g) {
-		dev_err(dev, "ipipe_get_gamma_params: table ptr empty for G\n");
+		dev_err(dev, "%s: table ptr empty for G\n", __func__);
 		return -EINVAL;
 	}
 	memcpy(gamma_param->table_g, gamma->table_g,
 	       (table_size * sizeof(struct vpfe_ipipe_gamma_entry)));
 
 	if (!gamma->bypass_b) {
-		dev_err(dev, "ipipe_get_gamma_params: table ptr empty for B\n");
+		dev_err(dev, "%s: table ptr empty for B\n", __func__);
 		return -EINVAL;
 	}
 	memcpy(gamma_param->table_b, gamma->table_b,
-- 
1.9.1


