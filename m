X-GM-THRID: 10514231984128
X-Received: by 10.50.43.229 with SMTP id z5mr4483183igl.3.1427822345455;
        Tue, 31 Mar 2015 10:19:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.27.138 with SMTP id 10ls2861227qgx.47.gmail; Tue, 31 Mar
 2015 10:19:05 -0700 (PDT)
X-Received: by 10.236.20.234 with SMTP id p70mr36746341yhp.46.1427822345200;
        Tue, 31 Mar 2015 10:19:05 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pd0-x233.google.com (mail-pd0-x233.google.com. [2607:f8b0:400e:c02::233])
        by gmr-mx.google.com with ESMTPS id pc4si1603165pac.0.2015.03.31.10.19.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2015 10:19:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c02::233 as permitted sender) client-ip=2607:f8b0:400e:c02::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c02::233 as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x233.google.com with SMTP id ni2so26958278pdb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2015 10:19:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=lxhr20F+wSO3MpRMBSno/hrv7QdiCGhyvmyp7as5EQY=;
        b=MlW4XbeBRh5u7fRnexmfHR9J2iPI4scYk7X0TZ39QJFHYOcg6u69RxwMBaca5D/gKN
         14nIHKNg5MXCV7CnPt/+0h/ubg6YuUEBJ/m6V32QFPI2QKMbA42/au1WxJ6rlHZbFquQ
         fLhbW6u41d9EeST66gTMst4ys+r/j4D3IhdS0Fyp/LFGU0kBMbUiK9KbiGNo4kqSz4DZ
         GGvh7Z93iPKiLVc0kpkie22kU/0z1VMbMraUGPnhKRWtdM/M0k/PrYiA36LyQmvKCg9F
         +S63mKGbSM5QQIFKSUGTle3zlhaq2G31UNCE2N6IqOUE2ttKUtBaWIpxkKLKcEE/8uKo
         +oNw==
X-Received: by 10.68.251.226 with SMTP id zn2mr69671950pbc.100.1427822345025;
        Tue, 31 Mar 2015 10:19:05 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.106.46])
        by mx.google.com with ESMTPSA id ey10sm13929854pab.47.2015.03.31.10.19.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 31 Mar 2015 10:19:04 -0700 (PDT)
Date: Tue, 31 Mar 2015 22:49:00 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: sm750fb: Fix switch-case
Message-ID: <20150331171900.GA28850@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fixed indentation of switch-case statements. Problem found using checkpatch.pl
ERROR: trailing statements should be on next line

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 22 ++++++++++++++++------
 1 file changed, 16 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index c506b5c..d963b6a 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -236,12 +236,22 @@ unsigned int ddk750_getVMSize(void)
 
 	/* get frame buffer size from GPIO */
 	reg = FIELD_GET(PEEK32(MISC_CTRL),MISC_CTRL,LOCALMEM_SIZE);
-	switch(reg){
-	case MISC_CTRL_LOCALMEM_SIZE_8M:  data = MB(8);  break; /* 8  Mega byte */
-	case MISC_CTRL_LOCALMEM_SIZE_16M: data = MB(16); break; /* 16 Mega byte */
-	case MISC_CTRL_LOCALMEM_SIZE_32M: data = MB(32); break; /* 32 Mega byte */
-	case MISC_CTRL_LOCALMEM_SIZE_64M: data = MB(64); break; /* 64 Mega byte */
-	default: data = 0;break;
+	switch (reg) {
+	case MISC_CTRL_LOCALMEM_SIZE_8M:
+		data = MB(8);
+		break; /* 8  Mega byte */
+	case MISC_CTRL_LOCALMEM_SIZE_16M:
+		data = MB(16);
+		break; /* 16 Mega byte */
+	case MISC_CTRL_LOCALMEM_SIZE_32M:
+		data = MB(32);
+		break; /* 32 Mega byte */
+	case MISC_CTRL_LOCALMEM_SIZE_64M:
+		data = MB(64);
+		break; /* 64 Mega byte */
+	default:
+		data = 0;
+		break;
 	}
 	return data;
 
-- 
1.9.1


