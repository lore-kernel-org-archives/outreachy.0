X-GM-THRID: 6201390323940196352
X-Received: by 10.107.136.229 with SMTP id s98mr18466467ioi.34.1443873700542;
        Sat, 03 Oct 2015 05:01:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.26.134 with SMTP id a128ls1263194ioa.108.gmail; Sat, 03
 Oct 2015 05:01:40 -0700 (PDT)
X-Received: by 10.107.150.66 with SMTP id y63mr17889551iod.11.1443873700135;
        Sat, 03 Oct 2015 05:01:40 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id el2si2364199pbb.0.2015.10.03.05.01.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Oct 2015 05:01:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by padhy16 with SMTP id hy16so130821904pad.1
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Oct 2015 05:01:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=tF3Oj4ShUg0QcJnp6JkehVtFamKm9bvGpK86rACVVJs=;
        b=iqL/X3UmzhCdJEfnqi7LT4VmUuYtx9mRigu+lT7Ku7lYYb4SH5wsOMNwMgplxLGbhV
         7bibemeqnkyvMJMbUobUavnT5XiXcrx1enoLSpzDyhTAnerVfX+gfHWf0SuRA7rhdlCn
         GuJC9EaX1LVPlM3Zf/dz35gEAXpeTEVpRCLpaRtJecUs0Edx4GiawEsznbyt/M2bLyio
         DuHNK5c5TrsU2ttEbaDejCnCGkzJ6JkCgDKhL0vdYGRcKkkvp7MV6oycDWkDJyWKpA4c
         HwZFLFmcge4FzFqcueQHRlPjxY2EKUqKwHWxYtZO3BNTKR5ImQSkgZwAt5uciZIT7coR
         tgYQ==
X-Received: by 10.66.227.230 with SMTP id sd6mr20694267pac.60.1443873699970;
        Sat, 03 Oct 2015 05:01:39 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id iy1sm17114134pbb.85.2015.10.03.05.01.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 03 Oct 2015 05:01:39 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH] Staging: most: Use module_platform_driver
Date: Sat,  3 Oct 2015 17:31:30 +0530
Message-Id: <1443873690-30847-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150202.560FC3A2.018A,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Use module_platform_driver for drivers whose init and exit functions
only register and unregister, respectively. Thus remove some
boilerplate code.

A simplified version of Coccinelle patch -

@a@
identifier f, x;
@@
-static f(...) { return platform_driver_register(&x); }
@b depends on a@
identifier e, a.x;
@@
-static e(...) { platform_driver_unregister(&x); }
@c depends on a && b@
identifier a.f;
declarer name module_init;
@@
-module_init(f);

@d depends on a && b && c@
identifier b.e, a.x;
declarer name module_exit;
declarer name module_platform_driver;
@@
-module_exit(e);
+module_platform_driver(x);

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/most/hdm-dim2/dim2_hdm.c | 21 +--------------------
 1 file changed, 1 insertion(+), 20 deletions(-)

diff --git a/drivers/staging/most/hdm-dim2/dim2_hdm.c b/drivers/staging/most/hdm-dim2/dim2_hdm.c
index 1bb70b7..c7e956f 100644
--- a/drivers/staging/most/hdm-dim2/dim2_hdm.c
+++ b/drivers/staging/most/hdm-dim2/dim2_hdm.c
@@ -926,26 +926,7 @@ static struct platform_driver dim2_driver = {
 	},
 };
 
-/**
- * dim2_hdm_init - Driver Registration Routine
- */
-static int __init dim2_hdm_init(void)
-{
-	pr_info("dim2_hdm_init()\n");
-	return platform_driver_register(&dim2_driver);
-}
-
-/**
- * dim2_hdm_exit - Driver Cleanup Routine
- **/
-static void __exit dim2_hdm_exit(void)
-{
-	pr_info("dim2_hdm_exit()\n");
-	platform_driver_unregister(&dim2_driver);
-}
-
-module_init(dim2_hdm_init);
-module_exit(dim2_hdm_exit);
+module_platform_driver(dim2_driver);
 
 MODULE_AUTHOR("Jain Roy Ambi <JainRoy.Ambi@microchip.com>");
 MODULE_AUTHOR("Andrey Shvetsov <andrey.shvetsov@k2l.de>");
-- 
2.1.4


