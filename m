X-GM-THRID: 6200616774953598976
X-Received: by 10.107.135.15 with SMTP id j15mr8464583iod.28.1443693774545;
        Thu, 01 Oct 2015 03:02:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.27.33 with SMTP id q1ls174602igg.33.gmail; Thu, 01 Oct 2015
 03:02:54 -0700 (PDT)
X-Received: by 10.66.246.198 with SMTP id xy6mr7331063pac.36.1443693774238;
        Thu, 01 Oct 2015 03:02:54 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id wl2si846223pab.1.2015.10.01.03.02.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 03:02:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id fv12so71612203pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 03:02:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=6/9vxkp5u4Fdr22PNgHvKDAprV8e3qYwUKtGRvlGrzU=;
        b=HSB5TOIvqMe87ML+Vw3Kknh9jnOG1YK29ZmZ7G5WZVodTFCntxMBfZcHFKo/6R5xTe
         siteSHxItNGQDlBrHFvMEpH/bdeOEatIcy4ntnPGovLOCXbjaByNDMb8iSmUMUkMQI02
         bPqHiENJAR7wtTg8ZhqeVN2n3YanSr7CJBzo0NvqRV2NqoN8vakE/ScowSwKi95EHGv2
         /PzWxNt1n7mEbwotpRzKNfBs1DTMLLmaOYoEFlLPU+q/eGa/7UarsBD9DlUr0Lg9rwnY
         4hK1fZvi1qd+o5p5cis0uIzE7d0wzoiJ1e+d3+MzXWPpM9swWgAwU6ydKmTMhaWflLvX
         jj3Q==
X-Received: by 10.68.68.134 with SMTP id w6mr11235102pbt.61.1443693774023;
        Thu, 01 Oct 2015 03:02:54 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id sj6sm5683332pbc.7.2015.10.01.03.02.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Oct 2015 03:02:53 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH] Staging: lustre: obdclass: Remove unused code
Date: Thu,  1 Oct 2015 15:32:44 +0530
Message-Id: <1443693764-10810-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150204.560D04CC.01F9,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Discard the functions as they are not used anywhere throughout the
kernel

Problem found using sparse.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/obdclass/lu_object.c | 19 -------------------
 1 file changed, 19 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/lu_object.c b/drivers/staging/lustre/lustre/obdclass/lu_object.c
index 897c089..a777b17 100644
--- a/drivers/staging/lustre/lustre/obdclass/lu_object.c
+++ b/drivers/staging/lustre/lustre/obdclass/lu_object.c
@@ -1908,25 +1908,6 @@ static unsigned long lu_cache_shrink_scan(struct shrinker *sk,
  * Debugging stuff.
  */
 
-/**
- * Environment to be used in debugger, contains all tags.
- */
-struct lu_env lu_debugging_env;
-
-/**
- * Debugging printer function using printk().
- */
-int lu_printk_printer(const struct lu_env *env,
-		      void *unused, const char *format, ...)
-{
-	va_list args;
-
-	va_start(args, format);
-	vprintk(format, args);
-	va_end(args);
-	return 0;
-}
-
 static struct shrinker lu_site_shrinker = {
 	.count_objects	= lu_cache_shrink_count,
 	.scan_objects	= lu_cache_shrink_scan,
-- 
2.1.4


