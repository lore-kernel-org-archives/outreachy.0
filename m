X-GM-THRID: 6656517734400
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,482a099a90e99456,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.159.227 with SMTP id xf3mr962043lbb.11.1425496611359;
        Wed, 04 Mar 2015 11:16:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.234.165 with SMTP id uf5ls227685lac.60.gmail; Wed, 04 Mar
 2015 11:16:50 -0800 (PST)
X-Received: by 10.112.138.202 with SMTP id qs10mr918542lbb.24.1425496610921;
        Wed, 04 Mar 2015 11:16:50 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-wg0-x235.google.com (mail-wg0-x235.google.com. [2a00:1450:400c:c00::235])
        by gmr-mx.google.com with ESMTPS id bg8si78754wib.3.2015.03.04.11.16.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 11:16:50 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) client-ip=2a00:1450:400c:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wggx12 with SMTP id x12so48794268wgg.6
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2015 11:16:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=S3dfxhpoJ9al6MwMcMDmZN17aS6NhYBxCvOZsrgegDE=;
        b=h7DG2cb0Xt4wxs3SJnbcGQDbCviWdflIiSQq3E1foHFpj6DrlX9veDask+g9wI26dz
         MPOa9vYYXfLGHOPBei6MYXceN5yU79h6Cj2XlxZRtV1ESOrpz3UTAqaStmIQnKtNHdtP
         v+hQ5WkUmMuC1oDUjgYtuumZfo00TM7m15acK1punPSz4xJJV7/xDvTAGW4LN3coaNDj
         2PIdssX/nRdU8kqlnTqME4aV0evu7GqpY1xEN661Fw33xsGrNvpDdYrhFwgBejVRggiu
         zvjoEFZcRNuKsSya2RfJvzeT+Y7EbbxWJAE0KYiUr1hkE/OX5QihR1+2nrh9i38XiWHh
         6KJA==
X-Received: by 10.194.48.74 with SMTP id j10mr11569239wjn.38.1425496610775;
        Wed, 04 Mar 2015 11:16:50 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([95.13.204.29])
        by mx.google.com with ESMTPSA id t9sm26442884wia.15.2015.03.04.11.16.49
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 04 Mar 2015 11:16:50 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: vt6655: fix space prohibited before that ','
Date: Wed,  4 Mar 2015 21:17:03 +0200
Message-Id: <1425496623-10408-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

This patch fixes the following checkpatch.pl error:
space prohibited before that ','

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/vt6655/rxtx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 07ce3fd..d98ff2f 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -78,7 +78,7 @@ static const unsigned short wFB_Opt0[2][5] = {
 };
 static const unsigned short wFB_Opt1[2][5] = {
 	{RATE_12M, RATE_18M, RATE_24M, RATE_24M, RATE_36M}, // fallback_rate0
-	{RATE_6M , RATE_6M,  RATE_12M, RATE_12M, RATE_18M}, // fallback_rate1
+	{RATE_6M, RATE_6M,  RATE_12M, RATE_12M, RATE_18M}, // fallback_rate1
 };
 
 #define RTSDUR_BB       0
-- 
1.8.3.2


