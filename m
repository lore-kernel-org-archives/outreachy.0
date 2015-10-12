X-GM-THRID: 6204781093577555968
X-Received: by 10.107.153.197 with SMTP id b188mr4173867ioe.3.1444663177820;
        Mon, 12 Oct 2015 08:19:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.230.6 with SMTP id su6ls216315obc.28.gmail; Mon, 12 Oct
 2015 08:19:37 -0700 (PDT)
X-Received: by 10.182.128.69 with SMTP id nm5mr23750298obb.46.1444663177564;
        Mon, 12 Oct 2015 08:19:37 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id wl2si1452104pab.1.2015.10.12.08.19.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 08:19:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id ve7so98713920pab.2
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 08:19:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=2BJ8GZeanIM1/VE6loqR1MAUTwQUIGgd1boBR7bfv0Q=;
        b=fNWLti2CcGBSGbUQIPxkdbGVZhMjMaxsrHyvZhkOpb25ikrFokkK8RcVWFVZvI5WDe
         9wAau9outHUQism6/Riob5yaO8i8GkI5j6EsqXaFaTnw1p10WNdPGF3ad2W9tadLvxmb
         R3jh+WME1u8h6gVZPGGkCSY6UFINvUjhTgQEnIlan23JOGJYAqGn4B4uUWfYx6jsxEaP
         pxk+Q33RQfNcI0GEDY3bhGyfWxiI3dNtqkGh6lIMUOgpMeqb69SGw6PVOLjRbm4lgUOs
         6d5YpW/+UL/RFXGZPXHWqWMqaz7iVHStOpP37eB2HgYaXKTnPRMmUSsYMjpyMTq7IGxv
         PgAg==
X-Received: by 10.66.102.65 with SMTP id fm1mr12519166pab.12.1444663177442;
        Mon, 12 Oct 2015 08:19:37 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id qy7sm11175141pab.37.2015.10.12.08.19.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 12 Oct 2015 08:19:36 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/3] Staging: lustre: osc: Remove null check before kfree
Date: Mon, 12 Oct 2015 20:49:18 +0530
Message-Id: <1444663160-26795-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444663160-26795-1-git-send-email-shraddha.6596@gmail.com>
References: <1444663160-26795-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150207.561BCF88.0093,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

kfree on NULL pointer is a no-op.
The semantic patch used to find such an instance where NULL check is
present before kfree-

// <smpl>
@@ expression E; @@
- if (E != NULL) { kfree(E); }
+ kfree(E);
@@ expression E; @@
- if (E != NULL) { kfree(E); E = NULL; }
+ kfree(E);
+ E = NULL;
// </smpl>smpl>

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/osc/osc_request.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/osc/osc_request.c b/drivers/staging/lustre/lustre/osc/osc_request.c
index 225e5ed..86c0303e 100644
--- a/drivers/staging/lustre/lustre/osc/osc_request.c
+++ b/drivers/staging/lustre/lustre/osc/osc_request.c
@@ -1998,9 +1998,7 @@ out:
 	if (mem_tight != 0)
 		cfs_memory_pressure_restore(mpflag);
 
-	if (crattr != NULL) {
-		kfree(crattr);
-	}
+	kfree(crattr);
 
 	if (rc != 0) {
 		LASSERT(req == NULL);
-- 
2.1.4


