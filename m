X-GM-THRID: 6201947249365221376
X-Received: by 10.112.181.10 with SMTP id ds10mr600851lbc.3.1444248397735;
        Wed, 07 Oct 2015 13:06:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.93.166 with SMTP id cv6ls220591wib.39.gmail; Wed, 07 Oct
 2015 13:06:37 -0700 (PDT)
X-Received: by 10.194.109.233 with SMTP id hv9mr613010wjb.1.1444248397521;
        Wed, 07 Oct 2015 13:06:37 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id c1si174577wiv.3.2015.10.07.13.06.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 13:06:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x232.google.com with SMTP id lk2so44437842wic.1
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 13:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=3evlXxfzI4MRqNTCj/OCi4C1gAwvb9hu+IgY01/kPCg=;
        b=ZPsCxZ5wS2Q70YQ8x5gs7ckB0RgGQjcVTARjKArF3546pv01VAxrTVAqBZm++cnhtA
         JW9kURPHdHx1Ma2Lrp9tA4ois1asOqx8DEa+q5jSeci5gHmRyL+JiBiGyNtyeuJaPpUG
         z8eYeMw5JUurVtSQyUMUs6zuNJbSmT0vwSQfiWxX8ApuIbE+fywrRPeK7ahkmNIyUmxG
         8PispDOdd1vu6Ab+05acp1v7CgwNQCs4TmK0s9O8PiTpnfYdImSAKxZj8y9tIpxnUQjJ
         hqty92Bld3a7fhQSOHbxTpBFoSDvPPZ9HVM/dKi+bjeD+ZM+r0mk8LpyzGHl4wkZ26Cu
         NJXA==
X-Received: by 10.194.118.5 with SMTP id ki5mr3199208wjb.94.1444248397430;
        Wed, 07 Oct 2015 13:06:37 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id fv13sm4016186wic.7.2015.10.07.13.06.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 07 Oct 2015 13:06:36 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 5/5] Staging: lustre: obdclass: obdo: Declare iattr_from_obdo as static
Date: Thu,  8 Oct 2015 01:36:08 +0530
Message-Id: <1444248368-29504-6-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444248368-29504-1-git-send-email-shraddha.6596@gmail.com>
References: <1444248368-29504-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150207.56157B4B.009E,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare iattr_from_obdo as static since it is used only in this
particular file.Also remove the corresponding declaration from
header file.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/include/obd_class.h | 1 -
 drivers/staging/lustre/lustre/obdclass/obdo.c     | 3 +--
 2 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
index 648132a..82f1a26 100644
--- a/drivers/staging/lustre/lustre/include/obd_class.h
+++ b/drivers/staging/lustre/lustre/include/obd_class.h
@@ -271,7 +271,6 @@ struct obdo;
 void obdo_refresh_inode(struct inode *dst, struct obdo *src, u32 valid);
 
 void obdo_to_ioobj(struct obdo *oa, struct obd_ioobj *ioobj);
-void iattr_from_obdo(struct iattr *attr, struct obdo *oa, u32 valid);
 void md_from_obdo(struct md_op_data *op_data, struct obdo *oa, u32 valid);
 
 #define OBT(dev)	(dev)->obd_type
diff --git a/drivers/staging/lustre/lustre/obdclass/obdo.c b/drivers/staging/lustre/lustre/obdclass/obdo.c
index 1a950fb..75e1dea 100644
--- a/drivers/staging/lustre/lustre/obdclass/obdo.c
+++ b/drivers/staging/lustre/lustre/obdclass/obdo.c
@@ -127,7 +127,7 @@ void obdo_to_ioobj(struct obdo *oa, struct obd_ioobj *ioobj)
 }
 EXPORT_SYMBOL(obdo_to_ioobj);
 
-void iattr_from_obdo(struct iattr *attr, struct obdo *oa, u32 valid)
+static void iattr_from_obdo(struct iattr *attr, struct obdo *oa, u32 valid)
 {
 	valid &= oa->o_valid;
 
@@ -174,7 +174,6 @@ void iattr_from_obdo(struct iattr *attr, struct obdo *oa, u32 valid)
 		attr->ia_valid |= ATTR_GID;
 	}
 }
-EXPORT_SYMBOL(iattr_from_obdo);
 
 void md_from_obdo(struct md_op_data *op_data, struct obdo *oa, u32 valid)
 {
-- 
2.1.4


