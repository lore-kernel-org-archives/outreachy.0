X-GM-THRID: 6252681224499757056
X-Received: by 10.66.141.36 with SMTP id rl4mr8299529pab.3.1455815794313;
        Thu, 18 Feb 2016 09:16:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.169.168 with SMTP id f40ls2468667ioj.83.gmail; Thu, 18 Feb
 2016 09:16:33 -0800 (PST)
X-Received: by 10.66.55.4 with SMTP id n4mr7918486pap.22.1455815793822;
        Thu, 18 Feb 2016 09:16:33 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ig0-x229.google.com (mail-ig0-x229.google.com. [2607:f8b0:4001:c05::229])
        by gmr-mx.google.com with ESMTPS id s20si282345igr.2.2016.02.18.09.16.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 09:16:33 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::229 as permitted sender) client-ip=2607:f8b0:4001:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::229 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x229.google.com with SMTP id y8so18770595igp.0
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 09:16:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=y9vfvmBoGRcUq+12NzfxugS0ArE/XtGN9PuBkAIJsxU=;
        b=UBcL/fsjiQPXUYsxSzXdyPToTe7vHg4bHHZa22gospAIwx0fabYsmomXDl7oJXTuvM
         LJqBhBj5zwWII57c/yG6RhbTNPgpNpuXHIbAe3XtB/Tv/uL5dftgeGZIJ3Ck7COOBWaP
         MfuAhq+F9EtUiOUikhdUnJcvfP3CWeQGygPq4x2KnKKRO1sPa6xXAvlAasdPALZo2Pui
         FkRwvsfm8QYTK2BDegTPOTRbyjXxqDuJoPFg5U9XxbjI2mB1dhnKRTRBmnyoFXzXICeD
         g5VegBCsNYsJCQAcaQemDWOffmBizfLTsr7fSpNu/faLS+dueCpSUU+30xiBXSiWc4/H
         OVzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=y9vfvmBoGRcUq+12NzfxugS0ArE/XtGN9PuBkAIJsxU=;
        b=RlhMqjBrL4RjKsW7vxOGi+BuKU5HM5ZTxxhTQ96D4RLnKeMWJ5Ef5EzIHDdazzCELN
         n8/HxyYT68VLsJ6wlogRYMPlRz9pGYP3zlSrvTMPq8UeyFbl7pBK7lO7pQDgtF2oMJLU
         ywthv+8VX91ZqyM+nw32vLv5j8nh8YmkTT40JAB/8wr+hfHKno5oimFjYCY5LLJBVhtX
         Ykaa/KqydPVKkYckabRv/EvGRLsFyghyBmPuj+5IkVql8lCZe8u2kfwWKwM5hI0CkOE3
         2bFttEjERixgqxOLgLmct9smUO7Yw5dWnDFSLDlGbxf/wBsk/iuF6HUC5U9UlWl90pLw
         1hLQ==
X-Gm-Message-State: AG10YORoQSPOtE6seibLkcAAz6GOha239+yketDb/yH136bPU3ygg8FLp3/IVF8L4ZkVkQ==
X-Received: by 10.50.20.70 with SMTP id l6mr4674664ige.5.1455815793662;
        Thu, 18 Feb 2016 09:16:33 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id k16sm1749218igf.0.2016.02.18.09.16.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 09:16:33 -0800 (PST)
Date: Thu, 18 Feb 2016 17:15:48 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: lustre: Remove unneeded else after goto
Message-ID: <20160218221548.GA7534@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove unnecessary else following an if block with a goto statement.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/lustre/lustre/libcfs/linux/linux-cpu.c | 3 ++-
 drivers/staging/lustre/lustre/lov/lov_obd.c            | 5 ++---
 drivers/staging/lustre/lustre/lov/lov_pack.c           | 5 +++--
 3 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/libcfs/linux/linux-cpu.c b/drivers/staging/lustre/lustre/libcfs/linux/linux-cpu.c
index e52afe3..e3c3854 100644
--- a/drivers/staging/lustre/lustre/libcfs/linux/linux-cpu.c
+++ b/drivers/staging/lustre/lustre/libcfs/linux/linux-cpu.c
@@ -854,7 +854,8 @@ cfs_cpt_table_create_pattern(char *pattern)
 			if (*str != 0) {
 				CERROR("Invalid pattern %s\n", str);
 				goto failed;
-			} else if (c != ncpt) {
+			}
+			if (c != ncpt) {
 				CERROR("expect %d partitions but found %d\n",
 				       ncpt, c);
 				goto failed;
diff --git a/drivers/staging/lustre/lustre/lov/lov_obd.c b/drivers/staging/lustre/lustre/lov/lov_obd.c
index d72c313..a9dda2a 100644
--- a/drivers/staging/lustre/lustre/lov/lov_obd.c
+++ b/drivers/staging/lustre/lustre/lov/lov_obd.c
@@ -399,10 +399,9 @@ static int lov_set_osc_active(struct obd_device *obd, struct obd_uuid *uuid,
 			CDEBUG(D_INFO, "OSC %s already %sactive!\n",
 			       uuid->uuid, active ? "" : "in");
 			goto out;
-		} else {
-			CDEBUG(D_CONFIG, "Marking OSC %s %sactive\n",
-			       obd_uuid2str(uuid), active ? "" : "in");
 		}
+		CDEBUG(D_CONFIG, "Marking OSC %s %sactive\n",
+		       obd_uuid2str(uuid), active ? "" : "in");
 
 		lov->lov_tgts[index]->ltd_active = active;
 		if (active) {
diff --git a/drivers/staging/lustre/lustre/lov/lov_pack.c b/drivers/staging/lustre/lustre/lov/lov_pack.c
index a78211f..4b35d65 100644
--- a/drivers/staging/lustre/lustre/lov/lov_pack.c
+++ b/drivers/staging/lustre/lustre/lov/lov_pack.c
@@ -404,8 +404,9 @@ int lov_getstripe(struct obd_export *exp, struct lov_stripe_md *lsm,
 	if (copy_from_user(&lum, lump, lum_size)) {
 		rc = -EFAULT;
 		goto out_set;
-	} else if ((lum.lmm_magic != LOV_USER_MAGIC) &&
-		 (lum.lmm_magic != LOV_USER_MAGIC_V3)) {
+	}
+	if ((lum.lmm_magic != LOV_USER_MAGIC) &&
+	    (lum.lmm_magic != LOV_USER_MAGIC_V3)) {
 		rc = -EINVAL;
 		goto out_set;
 	}
-- 
2.5.0


