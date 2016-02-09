X-GM-THRID: 6249298092856705024
X-Received: by 10.107.151.79 with SMTP id z76mr23319266iod.4.1455028164826;
        Tue, 09 Feb 2016 06:29:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.88.50 with SMTP id s47ls3994792qgd.34.gmail; Tue, 09 Feb
 2016 06:29:23 -0800 (PST)
X-Received: by 10.129.3.69 with SMTP id 66mr31933049ywd.41.1455028163850;
        Tue, 09 Feb 2016 06:29:23 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 12si4673782pfb.1.2016.02.09.06.29.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 06:29:23 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id e127so2561844pfe.3
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 06:29:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=yDQQLrD4gb7LKqmtl5XRcP63+XvR0jVx77PA9yqPXmw=;
        b=RaWVy0Jp7lNHvOksVlReZgSq1cASTzZ2oH9EG6itcndbQFUTL4aOV3byGg/uSomkz0
         j9W0VEXieXXKecZzq8+ZXtAKylJMZwVbhui3gKlIRt3mTzCuZgUTw/tG/HNOEW7wWSMS
         7Xwhd7iEBif0NJivQAV/wx6cZjxGztvL68cJSMFmZWYsTqF8AMrrlrtGHl0ZqFf/lxcH
         O0pre7NJ5CMzx+skI0iuxL+6S2FINAWMhKki+RXwOoQPljaxLg+71EiZit8QaOmwIKNK
         +MxGFbcV5zeC06dWCvxVCir2zA8HlDbP1/jSgr6WVcDSEg6WUZUAi5ml/l3w7JnswFbZ
         3Cww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=yDQQLrD4gb7LKqmtl5XRcP63+XvR0jVx77PA9yqPXmw=;
        b=MY8r6mukfJ6pjAwdp/BnTsSxlThTRG7Yk83LS+/phLG1Fb8KaymqlRMyXCe/lHdRaj
         lyBfaOmr3zM0GSF34FNERg1lHc7I7bLPBlzetT82N9ko0H1mIachg+6nVy/cx92XdbCU
         lVo1PS/oUhgiHnKaeJ9pvabt9cQp/Qkh5zsnzv+MxcWhMJYcqgBEIbA2uoqT8/rtwNXu
         mY72wQfYjIdPpU7hvgXjdhYICKFIWYIwQEIOJXy/dFgFNj6/R9VtWOSwnLOBDRsLuoeu
         gIHxLdjeicw/s6nzHDHvnMafx3Vx39zl8tX+dzB2hZl2q+kH+J6BbFDZ2gjtWDyvCStX
         R8GA==
X-Gm-Message-State: AG10YOTTxE2kXEO2AqeJgJaT4ET7pU1RwhcOe8AL0p5dEEC67YVJad4W0sNZkxJdkRtBnA==
X-Received: by 10.98.13.150 with SMTP id 22mr50494691pfn.143.1455028163685;
        Tue, 09 Feb 2016 06:29:23 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.176.229])
        by smtp.gmail.com with ESMTPSA id w89sm24795483pfi.13.2016.02.09.06.29.04
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 09 Feb 2016 06:29:22 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Tue, 09 Feb 2016 19:58:29 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 1/2] Staging: xgifb: Remove space after type cast
Date: Tue,  9 Feb 2016 19:57:40 +0530
Message-Id: <f53e085da9d48f05042c3d9f048d0ff4bfcaa974.1455026990.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455026990.git.bhumirks@gmail.com>
References: <cover.1455026990.git.bhumirks@gmail.com>
In-Reply-To: <cover.1455026990.git.bhumirks@gmail.com>
References: <cover.1455026990.git.bhumirks@gmail.com>

This patch removes unnecessary space after type casts.
Found using checkpatch.pl.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/xgifb/vb_setmode.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
index c886dd2..bb7756c 100644
--- a/drivers/staging/xgifb/vb_setmode.c
+++ b/drivers/staging/xgifb/vb_setmode.c
@@ -274,12 +274,12 @@ static void XGI_SetCRT1Timing_H(struct vb_device_info *pVBInfo,
 
 	for (i = 0x01; i <= 0x04; i++) {
 		data = pVBInfo->TimingH.data[i];
-		xgifb_reg_set(pVBInfo->P3d4, (unsigned short) (i + 1), data);
+		xgifb_reg_set(pVBInfo->P3d4, (unsigned short)(i + 1), data);
 	}
 
 	for (i = 0x05; i <= 0x06; i++) {
 		data = pVBInfo->TimingH.data[i];
-		xgifb_reg_set(pVBInfo->P3c4, (unsigned short) (i + 6), data);
+		xgifb_reg_set(pVBInfo->P3c4, (unsigned short)(i + 6), data);
 	}
 
 	j = xgifb_reg_get(pVBInfo->P3c4, 0x0e);
@@ -325,17 +325,17 @@ static void XGI_SetCRT1Timing_V(unsigned short ModeIdIndex,
 
 	for (i = 0x00; i <= 0x01; i++) {
 		data = pVBInfo->TimingV.data[i];
-		xgifb_reg_set(pVBInfo->P3d4, (unsigned short) (i + 6), data);
+		xgifb_reg_set(pVBInfo->P3d4, (unsigned short)(i + 6), data);
 	}
 
 	for (i = 0x02; i <= 0x03; i++) {
 		data = pVBInfo->TimingV.data[i];
-		xgifb_reg_set(pVBInfo->P3d4, (unsigned short) (i + 0x0e), data);
+		xgifb_reg_set(pVBInfo->P3d4, (unsigned short)(i + 0x0e), data);
 	}
 
 	for (i = 0x04; i <= 0x05; i++) {
 		data = pVBInfo->TimingV.data[i];
-		xgifb_reg_set(pVBInfo->P3d4, (unsigned short) (i + 0x11), data);
+		xgifb_reg_set(pVBInfo->P3d4, (unsigned short)(i + 0x11), data);
 	}
 
 	j = xgifb_reg_get(pVBInfo->P3c4, 0x0a);
@@ -433,7 +433,7 @@ static void XGI_SetXG21CRTC(unsigned short RefreshRateTableIndex,
 		Temp2 |= 0x40; /* Temp2 + 0x40 */
 
 	Temp2 &= 0xFF;
-	Tempax = (unsigned char) Temp2; /* Tempax: HRE[7:0] */
+	Tempax = (unsigned char)Temp2; /* Tempax: HRE[7:0] */
 	Tempax <<= 2; /* Tempax[7:2]: HRE[5:0] */
 	Tempdx >>= 6; /* Tempdx[7:6]->[1:0] HRS[9:8] */
 	Tempax |= Tempdx; /* HRE[5:0]HRS[9:8] */
@@ -483,11 +483,11 @@ static void XGI_SetXG21CRTC(unsigned short RefreshRateTableIndex,
 		Temp2 |= 0x20; /* VRE + 0x20 */
 
 	Temp2 &= 0xFF;
-	Tempax = (unsigned char) Temp2; /* Tempax: VRE[7:0] */
+	Tempax = (unsigned char)Temp2; /* Tempax: VRE[7:0] */
 	Tempax <<= 2; /* Tempax[7:0]; VRE[5:0]00 */
 	Temp1 &= 0x600; /* Temp1[10:9]: VRS[10:9] */
 	Temp1 >>= 9; /* Temp1[1:0]: VRS[10:9] */
-	Tempbx = (unsigned char) Temp1;
+	Tempbx = (unsigned char)Temp1;
 	Tempax |= Tempbx; /* Tempax[7:0]: VRE[5:0]VRS[10:9] */
 	Tempax &= 0x7F;
 	/* SR3F D[7:2]->VRE D[1:0]->VRS */
@@ -716,10 +716,10 @@ static void XGI_SetCRT1DE(unsigned short ModeIdIndex,
 	data = xgifb_reg_get(pVBInfo->P3d4, 0x11);
 	data &= 0x7F;
 	xgifb_reg_set(pVBInfo->P3d4, 0x11, data); /* Unlock CRTC */
-	xgifb_reg_set(pVBInfo->P3d4, 0x01, (unsigned short) (tempcx & 0xff));
+	xgifb_reg_set(pVBInfo->P3d4, 0x01, (unsigned short)(tempcx & 0xff));
 	xgifb_reg_and_or(pVBInfo->P3d4, 0x0b, ~0x0c,
-			(unsigned short) ((tempcx & 0x0ff00) >> 10));
-	xgifb_reg_set(pVBInfo->P3d4, 0x12, (unsigned short) (tempbx & 0xff));
+			(unsigned short)((tempcx & 0x0ff00) >> 10));
+	xgifb_reg_set(pVBInfo->P3d4, 0x12, (unsigned short)(tempbx & 0xff));
 	tempax = 0;
 	tempbx >>= 8;
 
-- 
1.9.1


