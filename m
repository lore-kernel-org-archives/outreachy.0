X-GM-THRID: 6542915874247933952
X-Received: by 10.55.15.4 with SMTP id z4mr1545032qkg.27.1523562697484;
        Thu, 12 Apr 2018 12:51:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.155.77 with SMTP id d74ls2976584qke.8.gmail; Thu, 12 Apr
 2018 12:51:36 -0700 (PDT)
X-Google-Smtp-Source: AIpwx4/x6OwdeEPmRVWWguuJNDzhixQ3btdCckjZddxXW98tpff396HQN38M9tGQzu/tnRhZL8HP
X-Received: by 10.55.112.2 with SMTP id l2mr1692282qkc.50.1523562696358;
        Thu, 12 Apr 2018 12:51:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1523562696; cv=none;
        d=google.com; s=arc-20160816;
        b=Shbv5V2atayBBloeDu4dqTooZ7H1EBAHMjDrDNmLej1doMzMw4N7v4vEnyDrJouvij
         MeV/PMK+L50CxVR2QRgdpE+UEceDDSaUTGeGaG892slBs97EW6je8NEx5clqAvqT/IfM
         IjPZynUg0nPVNQhMMblPmTQit5g6VbHyQ1Sk/izvUTk69ubEea4Foi37jLcWILA7ezet
         ksWPZwsTMHOQ+dqKfpHn9Yq5ihMVA9jJVDAuHxzcIxjpGKkzjJFYEkDtdCSK1wft5YCQ
         b2R7N6FeGSznS55S5u3GiWYCD0AftGMZzGqCwHuV6D6ibH2a3oWGHHwxXPgQO/STgH45
         OivQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=pr/ozLHmSAzs/F9DuB5x32L0PyMvv1kV/uvMADpuPQ4=;
        b=jo49rjhhD13BaFepaarfOJXuQt6giIqhyR3FSn/WHACuWJGokOMyLvD4eAuWiznugu
         YMW2u2aELHKgGKcttbJ5tzNVQPlSXEqzfbwTl+Mi8Uwu7WyOj3lSaF9y0KbY0qEQfsPT
         vKw2YSariKjQfxgxodSM4M8Bu8RHY/XZ5oYANKnIc1WPHDQlfdm0bEdxw/cmyy5Npk4R
         TGSi4C2ikmoJUE8/Ur4M3OWmMrbtmfgnDWqh5Lfz2lUldHb/cWh0BozbjToRseEkAo2e
         fcXwBQfvr7sNNkKOjgatwbDjJwGuXS+ybijOUhZhacBADMf9YFKKrbCaMIIzmwejsHuC
         9bZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=CzZGc4uF;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x241.google.com (mail-pl0-x241.google.com. [2607:f8b0:400e:c01::241])
        by gmr-mx.google.com with ESMTPS id r198si302768qke.2.2018.04.12.12.51.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Apr 2018 12:51:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::241 as permitted sender) client-ip=2607:f8b0:400e:c01::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=CzZGc4uF;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x241.google.com with SMTP id x4-v6so4605025pln.7
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Apr 2018 12:51:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=pr/ozLHmSAzs/F9DuB5x32L0PyMvv1kV/uvMADpuPQ4=;
        b=CzZGc4uFk5YgvkBifX0h+kVlzYGlu1bdIPiajrRgnaFzxfUb3iqbrqI9TmG1d5EL17
         1mfS3WqqwjiW1fJCjGep/sEZ4cj2NePDvoDzhRHbHElKxXeGDM5FB5NzSRxgOVadOQ8/
         5hVMx+Zm6wh/bc1xdxchJq49KF6I+g1+sZoVE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=pr/ozLHmSAzs/F9DuB5x32L0PyMvv1kV/uvMADpuPQ4=;
        b=JViAwLIKqXtuxBN6oyerjlA6+M/TsVcmUQRjvZEtHY3vqeJsYIQPAKYEoAyKiJS9AM
         4GJhuIXPBSY2uOfnChZ6frLxvPDSabNfPdMY3PEUXJTj2+CUg1QYuulpLwLhdhZLBMkn
         kLxOjFA3l5smX4NilOna7Fp6ZZ9tHPeL6k/3QpE/bC0sOcvfAJ7AsTvkbil0+NzqCduE
         BrBMgPkPN7afREUf784p3Efcxc/GIwcjmtHOOdux3QWoRnprT77wWeNjocf5Rq5MCmtD
         AwGt18idVLqUHeNzzGDNrK+hoA/hQQX6bHVfBoturo+Z2z5J8xWDIoSWFli7QSIGbrWZ
         fDCA==
X-Gm-Message-State: ALQs6tBxWwIW0apTTGh4nHWzIkrmoPhWtOcvsnkno2xXBxLixaWNfmvG
	dY4rA0XUzzzxqJHTn9tneNOw4y2x
X-Received: by 2002:a17:902:143:: with SMTP id 61-v6mr2408707plb.345.1523562695214;
        Thu, 12 Apr 2018 12:51:35 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id l3sm10743091pfg.49.2018.04.12.12.51.32
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 12 Apr 2018 12:51:34 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	mchehab@kernel.org
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH v3] Replace explicit use of function name with "%s...", __func__
Date: Thu, 12 Apr 2018 19:51:16 +0000
Message-Id: <1523562676-21327-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Replace use of function name with "%s...", __func__ to make future
modifications to the respective functions easier to handle. Issue found
with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
Changes in v3:
 - Clarify patch version
 - Move edited line to previous line
 - Clarify purpose of the changes

 drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 6a3434c..90c4ddd 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -695,22 +695,21 @@ static int ipipe_get_gamma_params(struct vpfe_ipipe_device *ipipe, void *param)
 	table_size = gamma->tbl_size;
 
 	if (!gamma->bypass_r && !gamma_param->table_r) {
-		dev_err(dev,
-			"ipipe_get_gamma_params: table ptr empty for R\n");
+		dev_err(dev, "%s: table ptr empty for R\n", __func__);
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
@@ -743,7 +742,7 @@ static int ipipe_get_3d_lut_params(struct vpfe_ipipe_device *ipipe, void *param)
 
 	lut_param->en = lut->en;
 	if (!lut_param->table) {
-		dev_err(dev, "ipipe_get_3d_lut_params: Invalid table ptr\n");
+		dev_err(dev, "%s: Invalid table ptr\n", __func__);
 		return -EINVAL;
 	}
 
@@ -924,7 +923,7 @@ static int ipipe_get_gbce_params(struct vpfe_ipipe_device *ipipe, void *param)
 	gbce_param->en = gbce->en;
 	gbce_param->type = gbce->type;
 	if (!gbce_param->table) {
-		dev_err(dev, "ipipe_get_gbce_params: Invalid table ptr\n");
+		dev_err(dev, "%s: Invalid table ptr\n", __func__);
 		return -EINVAL;
 	}
 
-- 
2.7.4


