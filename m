X-GM-THRID: 1786498777088
X-Received: by 10.152.36.132 with SMTP id q4mr295906laj.6.1424524567368;
        Sat, 21 Feb 2015 05:16:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.218.163 with SMTP id ph3ls268125wic.32.canary; Sat, 21 Feb
 2015 05:16:07 -0800 (PST)
X-Received: by 10.180.104.101 with SMTP id gd5mr254993wib.6.1424524567082;
        Sat, 21 Feb 2015 05:16:07 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id cl5si301035wib.3.2015.02.21.05.16.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 05:16:07 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id em10so8201201wid.1
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 05:16:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=j/b5kiJvAeLUeENle120iwfxG5JpLa+myYqjHn0oNcU=;
        b=uc/b30h2a6bTEVzh1czJrfxDzhKDQkMIaE8EtMPYLP0Kb1oOMGTY/lPKU6C32MyS30
         rNy52e6qtI+k70cDGTDUaOmuh3ThcOJUoaNhn6iZvcco0mVWGh++fi2o9XMsxJstF2Zp
         TPb2HQJEBEfyQGX/JiPYCHtm01VyY4zYO7dl1bfca8q4Ns41cpABDR0dWXEcutvTZB9N
         b1Rlu4zkaGTWwYLEFwPUjpZAXclzZhSHJPWK1UKsP/dnb2VU0idrhf3NQ6GKewdv6tVQ
         alSxFMyfysw0E28hw8Rt34I5om6eq9+GxUjDP+r8LEVSLF/j6gilxB2orsG5uuZHD105
         +ZkQ==
X-Received: by 10.180.19.193 with SMTP id h1mr4013684wie.2.1424524567017;
        Sat, 21 Feb 2015 05:16:07 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id lu13sm6935922wic.10.2015.02.21.05.16.05
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 05:16:05 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH 2/3] Staging: lustre: use kstrtoul() instead of sscanf()
Date: Sat, 21 Feb 2015 15:15:52 +0200
Message-Id: <1424524553-9035-2-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1424524553-9035-1-git-send-email-aybuke.147@gmail.com>
References: <1424524553-9035-1-git-send-email-aybuke.147@gmail.com>

This patch makes checkpatch.pl by fixing the following warning:
WARNING: Prefer kstrto<type> to single variable sscanf

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/lustre/lustre/llite/llite_lib.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
index 9646e1a..62f923c 100644
--- a/drivers/staging/lustre/lustre/llite/llite_lib.c
+++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
@@ -2190,6 +2190,7 @@ int ll_process_config(struct lustre_cfg *lcfg)
 	struct lprocfs_static_vars lvars;
 	unsigned long x;
 	int rc = 0;
+	int rc1;
 
 	lprocfs_llite_init_vars(&lvars);
 
@@ -2197,7 +2198,8 @@ int ll_process_config(struct lustre_cfg *lcfg)
 	ptr = strrchr(lustre_cfg_string(lcfg, 0), '-');
 	if (!ptr || !*(++ptr))
 		return -EINVAL;
-	if (sscanf(ptr, "%lx", &x) != 1)
+	rc1 = kstrtoul(ptr, 16, &x);
+	if (rc1 != 1)
 		return -EINVAL;
 	sb = (void *)x;
 	/* This better be a real Lustre superblock! */
-- 
1.9.1


