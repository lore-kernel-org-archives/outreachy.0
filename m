X-GM-THRID: 6205786536614559744
X-Received: by 10.182.246.98 with SMTP id xv2mr6819123obc.3.1444897273095;
        Thu, 15 Oct 2015 01:21:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.27.4 with SMTP id p4ls2038377igg.11.canary; Thu, 15 Oct
 2015 01:21:12 -0700 (PDT)
X-Received: by 10.66.182.162 with SMTP id ef2mr6496133pac.35.1444897272811;
        Thu, 15 Oct 2015 01:21:12 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id el2si1340758pbb.0.2015.10.15.01.21.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 01:21:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id ws5so17114923pab.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 01:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=+utH6LPuFX+d8aWyyGPOulSySeK3aaiBjkKDqsOU68U=;
        b=NYUg3Wc/kQPWnZxPJUagYM7SP+qJrjN68hgVfShrTxFYQo4BoqODwF2aVXk0GnYp+1
         8ArH1vL8IY+yj9IurgJ+eHcsHCandQ3+7b2Kn0N6Afka5KNgtvH91zBwDwaOXqtT2dS3
         1Y07vUNFWNrn+QZMSP1AH2B35E35KoIuAJgcngZL5R4B9PRycRTSAJwg9bvb2yJPCeW3
         v1JS7R1mxuXQGdd4STr+ebcCiGxDxYLnnX5OS5blt4JyVMwfYO/xMjKdCT6V6PAdyBl4
         1wToPvARcWnJ6L+409z9C4YkMkc/azkAEdsazR+DFJXa8HsobtsxlziR2vxHkJFO98zH
         2egg==
X-Received: by 10.66.254.101 with SMTP id ah5mr8758433pad.10.1444897272668;
        Thu, 15 Oct 2015 01:21:12 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id uc1sm13892919pab.20.2015.10.15.01.21.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Oct 2015 01:21:12 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH] Staging: lustre: obd_class.h: Remove unused macro OBD_CHECK_MD_OP
Date: Thu, 15 Oct 2015 13:50:19 +0530
Message-Id: <1444897219-5093-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150204.561F61F7.0197,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Remove macro OBD_CHECK_MD_OP since it is defined but not used

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/include/obd_class.h | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
index ec36c88..561dcd5 100644
--- a/drivers/staging/lustre/lustre/include/obd_class.h
+++ b/drivers/staging/lustre/lustre/include/obd_class.h
@@ -353,16 +353,6 @@ static inline int obd_check_dev_active(struct obd_device *obd)
 				(export)->exp_md_stats, coffset);	    \
 	}
 
-#define OBD_CHECK_MD_OP(obd, op, err)			   \
-do {							    \
-	if (!OBT(obd) || !MDP((obd), op)) {		     \
-		if (err)					\
-			CERROR("md_" #op ": dev %s/%d no operation\n", \
-			       obd->obd_name, obd->obd_minor);  \
-		return err;				    \
-	}						       \
-} while (0)
-
 #define EXP_CHECK_MD_OP(exp, op)				\
 do {							    \
 	if ((exp) == NULL) {				    \
-- 
2.1.4


