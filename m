X-GM-THRID: 6261067908671078400
X-Received: by 10.182.111.170 with SMTP id ij10mr10083889obb.42.1457768471670;
        Fri, 11 Mar 2016 23:41:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.91.137 with SMTP id z9ls3208839qgd.75.gmail; Fri, 11 Mar
 2016 23:41:10 -0800 (PST)
X-Received: by 10.140.174.65 with SMTP id u62mr10282049qhu.15.1457768470878;
        Fri, 11 Mar 2016 23:41:10 -0800 (PST)
Return-Path: <tanvisurana20@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id tu5si1462466pab.2.2016.03.11.23.41.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 23:41:10 -0800 (PST)
Received-SPF: pass (google.com: domain of tanvisurana20@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of tanvisurana20@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=tanvisurana20@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id q6so10090817pav.0
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Mar 2016 23:41:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=59cyFnMBNEVNKelTdWHwMb0fGjUOZGr7AdxI32h/uGQ=;
        b=uNrs+UY5vEg/4fanbXtOuGMoXeHd7nJWE1AlntM3TYby/lqOz4yaaAwtmv5y4YFMJ2
         1ZNtGisTcxCWdcBa+2hnLObQOyyueZ7BFrb0+GZ3fRMgDbFj+SAg98F8Ec7q7PDI70pS
         eB6aBzjOmcyjkA+6x9jc+uQDMq1BH+N6SJ0OtxdVxyhGX4mtusQRrR+um6lwKRFaE+I8
         CglMjeiXtvsESkoLbPy+DsGOgMOjyczDqJf97vGFQe/Fy0I/H3xEEREtlXJmh+FoE18k
         K0lTonmaiXGIVKKjMe97Zv6m2Z+o/JulvWF/bgeK6ljYOgRU24d/0KSKSgs7oTi6MjqD
         0Rfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=59cyFnMBNEVNKelTdWHwMb0fGjUOZGr7AdxI32h/uGQ=;
        b=aJJr/b51xgyV00d+Sn4ILIMD0YrmxD+6bI43JWv8mBb2Ln3pzeoMcpcAZk2uS4bDCg
         5Dy9VsIu54E/7L5rd+Ni4mwmJRwGBNeMa93vqWu5WoTjAqT938/P9Tgt36NdOoQnEtlE
         FjwthiP1efMF0bdPde6XCCdNK1Gjhzh5yHL4GnIHqQUPwG7ytKh30xi/2r3GYd2l1OJ4
         cDqQQeVDZCRZed/wS12RnvjIB3fUrSlWGLTHZZfgdBUCF8nzJxvbnJdXU6yzZEkKfOs6
         e/+r6RW0b7rTAFUw0z5mr1/XRWAjn4vyjWjMQj5s57TdUZjPm1O/0t2TeLQKOtsuC9pX
         t21g==
X-Gm-Message-State: AD7BkJLnH3HvBLEO5gQ/iEfVe7CrpS8vP7A0/T1WwPMv+yrJdp65zmx2zFtXkVLVpsvXbw==
X-Received: by 10.66.237.1 with SMTP id uy1mr22381387pac.114.1457768470682;
        Fri, 11 Mar 2016 23:41:10 -0800 (PST)
Return-Path: <tanvisurana20@gmail.com>
Received: from tanvi-Inspiron-5521.8.8.4.4 ([120.57.156.3])
        by smtp.gmail.com with ESMTPSA id i9sm17608815pfi.95.2016.03.11.23.41.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 11 Mar 2016 23:41:10 -0800 (PST)
From: Tanvi Surana <tanvisurana20@gmail.com>
To: tanvisurana20@gmail.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] Staging: lustre: modified block comments
Date: Sat, 12 Mar 2016 13:11:00 +0530
Message-Id: <1457768460-5830-1-git-send-email-tanvisurana20@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix checpatch.pl errors and warnings in lustre
WARNING: Block comments use * on subsequent lines

Signed-Off-By: Tanvi Surana <tanvisurana20@gmail.com>
---
 drivers/staging/lustre/lustre/llite/xattr.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/xattr.c b/drivers/staging/lustre/lustre/llite/xattr.c
index 8eb43f1..9483e0e 100644
--- a/drivers/staging/lustre/lustre/llite/xattr.c
+++ b/drivers/staging/lustre/lustre/llite/xattr.c
@@ -239,7 +239,8 @@ int ll_setxattr(struct dentry *dentry, const char *name,
 
 		/* Attributes that are saved via getxattr will always have
 		 * the stripe_offset as 0.  Instead, the MDS should be
-		 * allowed to pick the starting OST index.   b=17846 */
+		 * allowed to pick the starting OST index.   b=17846
+		 */
 		if (lump != NULL && lump->lmm_stripe_offset == 0)
 			lump->lmm_stripe_offset = -1;
 
@@ -482,7 +483,8 @@ ssize_t ll_getxattr(struct dentry *dentry, const char *name,
 
 		if (size == 0 && S_ISDIR(inode->i_mode)) {
 			/* XXX directory EA is fix for now, optimize to save
-			 * RPC transfer */
+			 * RPC transfer
+			 */
 			rc = sizeof(struct lov_user_md);
 			goto out;
 		}
@@ -496,8 +498,9 @@ ssize_t ll_getxattr(struct dentry *dentry, const char *name,
 				rc = -ENODATA;
 			}
 		} else {
-			/* LSM is present already after lookup/getattr call.
-			 * we need to grab layout lock once it is implemented */
+		   /* LSM is present already after lookup/getattr call.
+			* we need to grab layout lock once it is implemented
+			*/
 			rc = obd_packmd(ll_i2dtexp(inode), &lmm, lsm);
 			lmmsize = rc;
 		}
@@ -510,7 +513,8 @@ ssize_t ll_getxattr(struct dentry *dentry, const char *name,
 			/* used to call ll_get_max_mdsize() forward to get
 			 * the maximum buffer size, while some apps (such as
 			 * rsync 3.0.x) care much about the exact xattr value
-			 * size */
+			 * size
+			 */
 			rc = lmmsize;
 			goto out;
 		}
@@ -526,7 +530,8 @@ ssize_t ll_getxattr(struct dentry *dentry, const char *name,
 		memcpy(lump, lmm, lmmsize);
 		/* do not return layout gen for getxattr otherwise it would
 		 * confuse tar --xattr by recognizing layout gen as stripe
-		 * offset when the file is restored. See LU-2809. */
+		 * offset when the file is restored. See LU-2809.
+		 */
 		lump->lmm_layout_gen = 0;
 
 		rc = lmmsize;
-- 
1.9.1


