X-GM-THRID: 746747592704
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,35770f706c8015,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.81.34 with SMTP id w2mr874196wix.2.1424367330448;
        Thu, 19 Feb 2015 09:35:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.19.165 with SMTP id g5ls152671lae.68.gmail; Thu, 19 Feb
 2015 09:35:30 -0800 (PST)
X-Received: by 10.112.144.130 with SMTP id sm2mr769480lbb.9.1424367330036;
        Thu, 19 Feb 2015 09:35:30 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x241.google.com (mail-wi0-x241.google.com. [2a00:1450:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id r6si4553422wix.0.2015.02.19.09.35.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 09:35:30 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) client-ip=2a00:1450:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::241 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x241.google.com with SMTP id r20so3882445wiv.0
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 09:35:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=C/YXkbYLllRsv27acxnujc60Q30yqH1bb8/dgPhi2IY=;
        b=KRNC+kn9siHzXWpyebQeK3m8x5/uWrDGVr+J3OpWwzcCCoSakxVfvd92xE9iEziykL
         W/pbJz7yfzxIqber+Gpow8pu6sZOeZFAG9hvfRBm0jNxC56sf9dKipov3dsXqfz/0FiB
         t7tqEDx2yIEubOcx9MMc9HpCqX30Wc3NY0rjk2z1u7D1ESHHB+flYfBGt/UKDp1zZ8Fw
         xccA27R17MEyHeEZH1PkIkyxpo7E1ywmeJxnc3XGJk57OtveGDUHLEKi/tbYoPJrLTXv
         Wqp68VyYUqyqnMuWdh/N9uFCjOR2YweYWLKXJqUuyT34Mm5iS/Fj8y2bdiOgHfq/X0L3
         OyNw==
X-Received: by 10.180.91.47 with SMTP id cb15mr12222636wib.39.1424367329915;
        Thu, 19 Feb 2015 09:35:29 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id a1sm31126834wiy.10.2015.02.19.09.35.28
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Feb 2015 09:35:29 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH 4/4] Staging: drivers: dma: ste_dma40: fixed trailing statements
Date: Thu, 19 Feb 2015 19:35:16 +0200
Message-Id: <1424367316-26356-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Used checkpatch.pl on this patch.Trailing statements wrote on next line.

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/dma/ste_dma40.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/dma/ste_dma40.c b/drivers/dma/ste_dma40.c
index 08b63f2..796c070 100644
--- a/drivers/dma/ste_dma40.c
+++ b/drivers/dma/ste_dma40.c
@@ -2371,8 +2371,10 @@ static struct dma_chan *d40_xlate(struct of_phandle_args *dma_spec,
 	flags = dma_spec->args[2];
 
 	switch (D40_DT_FLAGS_MODE(flags)) {
-	case 0: cfg.mode = STEDMA40_MODE_LOGICAL; break;
-	case 1: cfg.mode = STEDMA40_MODE_PHYSICAL; break;
+	case 0:
+		cfg.mode = STEDMA40_MODE_LOGICAL; break;
+	case 1:
+		cfg.mode = STEDMA40_MODE_PHYSICAL; break;
 	}
 
 	switch (D40_DT_FLAGS_DIR(flags)) {
-- 
1.9.1


