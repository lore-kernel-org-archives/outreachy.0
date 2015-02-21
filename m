X-GM-THRID: 1786498777088
X-Received: by 10.112.214.234 with SMTP id od10mr434281lbc.3.1424551685637;
        Sat, 21 Feb 2015 12:48:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.8.13 with SMTP id n13ls21222laa.80.gmail; Sat, 21 Feb 2015
 12:48:05 -0800 (PST)
X-Received: by 10.112.50.106 with SMTP id b10mr436862lbo.8.1424551685107;
        Sat, 21 Feb 2015 12:48:05 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id l8si567225wia.0.2015.02.21.12.48.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 12:48:05 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f171.google.com with SMTP id hi2so9491605wib.4
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 12:48:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Exmi4igouNI2oVle6clskmTSTNNDvcuI4OsFz3RCvYs=;
        b=VUQM2KTxwqGHxU2C6GaUkmA2yV6lN58Twg7GXHVQlc2G88uFMpURHdcG+g+9a2kx8X
         UGnpyVZO5Es+nqcbafNlcV/nakkMAiSvFCzBxSE1UdDuWVem/n5PwFqMDXq9vaGB5LWQ
         1VnlOh290D6OKswytRCRBJZ+wLLcMNO65BoZ2LX8CvVh/Hh7HDc74t282Z1BmmtPLH3/
         GegmkcsgNyqFDZxNVZNO3AktEoO0KVE+VL5pamjNUt+iLto2cj7pt3ynKN4zjh4ZLVZ+
         AMTbRCLaF1Q+Su5XGzoBhTarbhgMQWP+iyeQbmsQsQm+mpymnump+GAu2ufr/S91WcdR
         ywIg==
X-Received: by 10.180.76.178 with SMTP id l18mr6708320wiw.36.1424551684980;
        Sat, 21 Feb 2015 12:48:04 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([95.15.157.229])
        by mx.google.com with ESMTPSA id cf12sm48104188wjb.10.2015.02.21.12.48.03
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 12:48:04 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH v2 2/3] Staging: lustre: use kstrtoul() instead of sscanf()
Date: Sat, 21 Feb 2015 22:47:43 +0200
Message-Id: <1424551663-14662-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch makes checkpatch.pl by fixing the following warning:
WARNING: Prefer kstrto<type> to single variable sscanf.
I used to kstrtoul can convert unsigned long instead of sscanf

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
Changes since v1:
* Removed unnecessary variable rc1.
* The return value is changed(Returns 0 on success).
* Changed the description
---
 drivers/staging/lustre/lustre/llite/llite_lib.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
index a3367bf..fb99cdb 100644
--- a/drivers/staging/lustre/lustre/llite/llite_lib.c
+++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
@@ -2198,7 +2198,8 @@ int ll_process_config(struct lustre_cfg *lcfg)
 	ptr = strrchr(lustre_cfg_string(lcfg, 0), '-');
 	if (!ptr || !*(++ptr))
 		return -EINVAL;
-	if (sscanf(ptr, "%lx", &x) != 1)
+	rc = kstrtoul(ptr, 16, &x);
+	if (rc != 0)
 		return -EINVAL;
 	sb = (void *)x;
 	/* This better be a real Lustre superblock! */
-- 
1.9.1


