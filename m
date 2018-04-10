X-GM-THRID: 6542915874247933952
X-Received: by 10.107.95.17 with SMTP id t17mr904550iob.123.1523391314512;
        Tue, 10 Apr 2018 13:15:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:9747:: with SMTP id k68-v6ls2318816ite.10.gmail; Tue, 10
 Apr 2018 13:15:13 -0700 (PDT)
X-Google-Smtp-Source: AIpwx49Ldvm3/UgZxy5rBTvwGq8s11fCdqfca9hn3Z/oYw5aeSgYerOTKKGufpGNqsuyFEqE+yh8
X-Received: by 2002:a24:6d81:: with SMTP id m123-v6mr486319itc.1.1523391313427;
        Tue, 10 Apr 2018 13:15:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1523391313; cv=none;
        d=google.com; s=arc-20160816;
        b=U7rluDt3le+rgi3bT9y7eEkaJqwfYe+yxmXTzYc0XyQdUZxof/XY1gq9uwgwjU2UEi
         BF8rlaeG/R9/NNcxKzdHpodjjzmt6fRaegGgdaqAHEhVLCV3B34fKyIOcMJe4DZSg7x8
         xK5md/MgP0RtRlW35xm0gMsWZNY6Lt+b/mWHX2SgYuFxQUekwCVKjZW5XjAnouhKY1vc
         sKSFwqe9+oUNN2ZDUPwYwaMcduhRz/pIlp0yqekJUxfCRoBUJNy4wWI1Zo4TguTVPpOh
         TwNMYMwVsPO9x9z4wZV3ZFB0wHjkDFPjQFww+y3VHA7WbipI3uc2jHzaApZ0Puf0fFn9
         +UxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=XL4Pim9x2RyybWh8wgl6YgVRGpUHwM04yRy4y3E/BT8=;
        b=phSI+P2MgSJhGV5KDqxs85/PZ6/hyAXh1blPyHL4XYUC5kuVE7Mr/LNdlS2w5p47TF
         0KVVyO6L/p2hlzhIm6mPwAD0lVZXmsR6Mf9Cu2Mcm6TdxzKVhRf7NdOCWuIgcOTTmnr7
         N+LjPz1LbGBQ1h+z3zK2jNU3dkUA2IhqEOZbVyyPmdyV6EHgmNccQqANoUf2xf7g9Kzh
         hxN1phjZYGKEQuwH0jotOniTYXVd3IS/M3trFJvCKMKF0HLXYUuvfRch7MK1+NCSMGTz
         Wj9EXuLxRzEdnDK3z/VBagIGLdkP6OhSauE7VtN2niKZjZXUH0To82I6/02tMT5fqH37
         Lf6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=fj8xMB0e;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400d:c0d::22e as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-qt0-x22e.google.com (mail-qt0-x22e.google.com. [2607:f8b0:400d:c0d::22e])
        by gmr-mx.google.com with ESMTPS id d85-v6si1193598itb.2.2018.04.10.13.15.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Apr 2018 13:15:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400d:c0d::22e as permitted sender) client-ip=2607:f8b0:400d:c0d::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=fj8xMB0e;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400d:c0d::22e as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-qt0-x22e.google.com with SMTP id w12so14771585qti.4
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Apr 2018 13:15:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=XL4Pim9x2RyybWh8wgl6YgVRGpUHwM04yRy4y3E/BT8=;
        b=fj8xMB0e46Vf8y7TOJkpNlJmtyfFwu6WjFcaRLqLYFDXozH8xXHr5bPl5LY34Y77Kx
         2sKtx+FOjChigpCOBSZIAT5ugyryGF/2xbbZU6l3iCf8ScqWLlJMHQBTNurQXMg0t3dp
         M0z1DIjcZiaaSawK0NAcNMSBWhyP7z6sBwt/8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=XL4Pim9x2RyybWh8wgl6YgVRGpUHwM04yRy4y3E/BT8=;
        b=OLeZo7mQz3m+Z6G8uxmpq5asD187DiIRfA2H3a2yCBaQUGvQaCiIMvYXyg6XSvDhVt
         y+Q+mmpsr0sSHEiIjkRA/WA0GmayWoU899M4pbkAe8BcalsPCHPMFGuFaAvqeWy+NrAT
         Fivj4nftcRr0jo7jS0G5wFTWhTRofoVW52LG+cg9Vc5vGTG77qj7Odsc2hRvhAHTbH9R
         TlUMepzah07DpTx/Q3lg9UFPYntJumdwZsChgo6HPTMC1tal6g/1//1TYt7oRmZmPNA6
         odONrlhF16qvd8QlAiuoszlh/XuFGKoP/+k8SE2MCHOPf58FohyZpNnLamjdFTN5HqSp
         Dh1A==
X-Gm-Message-State: ALQs6tAZvDKAN1BEcAV0/v7PviTQ/0IJe/1sPBXnbFTtrn2gsVQ2AZXb
	mghOWzXJQffX8X/s8Y99cNP3pY/1
X-Received: by 10.200.36.250 with SMTP id t55mr2947511qtt.141.1523391312840;
        Tue, 10 Apr 2018 13:15:12 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id s3sm2759143qte.82.2018.04.10.13.15.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 10 Apr 2018 13:15:11 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	mchehab@kernel.org
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH v2] Replace explicit use of function name with "%s...", __func__
Date: Tue, 10 Apr 2018 20:14:56 +0000
Message-Id: <1523391296-5535-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Replace use of function name with "%s...", __func__ to make future
modifications to the respective functions easier to handle. Issue found
with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
Changes in v2:
 - Similar changes previously distributed across a patchset are now in a single patch.
 - Reason for the change added to commit message.

 drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 6a3434c..a59ab6f 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -696,21 +696,21 @@ static int ipipe_get_gamma_params(struct vpfe_ipipe_device *ipipe, void *param)
 
 	if (!gamma->bypass_r && !gamma_param->table_r) {
 		dev_err(dev,
-			"ipipe_get_gamma_params: table ptr empty for R\n");
+			"%s: table ptr empty for R\n", __func__);
 		return -EINVAL;
 	}
 	memcpy(gamma_param->table_r, gamma->table_r,
 	       (table_size * sizeof(struct vpfe_ipipe_gamma_entry)));
 
 	if (!gamma->bypass_g && !gamma_param->table_g) {
-		dev_err(dev, "ipipe_get_gamma_params: table ptr empty for G\n");
+		dev_err(dev, "%s: table ptr empty for G\n", __func__);
 		return -EINVAL;
 	}
 	memcpy(gamma_param->table_g, gamma->table_g,
 	       (table_size * sizeof(struct vpfe_ipipe_gamma_entry)));
 
 	if (!gamma->bypass_b && !gamma_param->table_b) {
-		dev_err(dev, "ipipe_get_gamma_params: table ptr empty for B\n");
+		dev_err(dev, "%s: table ptr empty for B\n", __func__);
 		return -EINVAL;
 	}
 	memcpy(gamma_param->table_b, gamma->table_b,
@@ -743,7 +743,7 @@ static int ipipe_get_3d_lut_params(struct vpfe_ipipe_device *ipipe, void *param)
 
 	lut_param->en = lut->en;
 	if (!lut_param->table) {
-		dev_err(dev, "ipipe_get_3d_lut_params: Invalid table ptr\n");
+		dev_err(dev, "%s: Invalid table ptr\n", __func__);
 		return -EINVAL;
 	}
 
@@ -924,7 +924,7 @@ static int ipipe_get_gbce_params(struct vpfe_ipipe_device *ipipe, void *param)
 	gbce_param->en = gbce->en;
 	gbce_param->type = gbce->type;
 	if (!gbce_param->table) {
-		dev_err(dev, "ipipe_get_gbce_params: Invalid table ptr\n");
+		dev_err(dev, "%s: Invalid table ptr\n", __func__);
 		return -EINVAL;
 	}
 
-- 
2.7.4


