X-GM-THRID: 4474044153856
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,ee7b3fe2dc06ac74,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.214.234 with SMTP id od10mr2010549lbc.3.1425041149166;
        Fri, 27 Feb 2015 04:45:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.193 with SMTP id t1ls108467wia.30.canary; Fri, 27 Feb
 2015 04:45:47 -0800 (PST)
X-Received: by 10.194.142.174 with SMTP id rx14mr2031921wjb.4.1425041147947;
        Fri, 27 Feb 2015 04:45:47 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x243.google.com (mail-wg0-x243.google.com. [2a00:1450:400c:c00::243])
        by gmr-mx.google.com with ESMTPS id by11si126880wib.1.2015.02.27.04.45.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 04:45:47 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::243 as permitted sender) client-ip=2a00:1450:400c:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::243 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x243.google.com with SMTP id k14so4961540wgh.0
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 04:45:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=0OvEPw7IFwMMMwhaY+gGfDxQIFQdChjRLB1BhAjxn5A=;
        b=zNJ4ICYMFk0u19P673ePZz9Lv7vUEziyNzqDnxJw0241GVYIigRKBeTHeUeWy9rK47
         2+JuZsPSH2h4ooMc4joWTpfoI8q+MM4u5kaVGvu90Q0Nhf/kisDCvStxa4vPNDnnraDc
         jMpTY2HmaURQnIvP0mNzsyi/XEVgCxKtCjYw4k2Zzc83InfP0qrDKx7G9avpGdxNr9cl
         4NESdpMUYghvFgTXWcDs36pazIPuh81EwrX9qXFOAexCdp9KOSISkwgwtVorjsF/dmd7
         xG7YgaZnCIFhuEjHR5KtZDZ7pDqAplwowy6brNd+u+LU6B1N998I8Zn7pnQaiWFMqyFA
         mmdw==
X-Received: by 10.194.85.129 with SMTP id h1mr27661781wjz.147.1425041147827;
        Fri, 27 Feb 2015 04:45:47 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.178.157.65])
        by mx.google.com with ESMTPSA id kr5sm5857002wjc.1.2015.02.27.04.45.46
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 04:45:47 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: lustre: lustre: osc: Insert missing space before '|'
Date: Fri, 27 Feb 2015 14:45:41 +0200
Message-Id: <1425041141-15311-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Insert missing space before '|' to improve readability.

This Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/lustre/lustre/osc/osc_request.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/osc/osc_request.c b/drivers/staging/lustre/lustre/osc/osc_request.c
index b9450b9..cce7d9d 100644
--- a/drivers/staging/lustre/lustre/osc/osc_request.c
+++ b/drivers/staging/lustre/lustre/osc/osc_request.c
@@ -1165,8 +1165,8 @@ static int check_write_rcs(struct ptlrpc_request *req,
 static inline int can_merge_pages(struct brw_page *p1, struct brw_page *p2)
 {
 	if (p1->flag != p2->flag) {
-		unsigned mask = ~(OBD_BRW_FROM_GRANT| OBD_BRW_NOCACHE|
-				  OBD_BRW_SYNC|OBD_BRW_ASYNC|OBD_BRW_NOQUOTA);
+		unsigned mask = ~(OBD_BRW_FROM_GRANT | OBD_BRW_NOCACHE |
+				  OBD_BRW_SYNC | OBD_BRW_ASYNC|OBD_BRW_NOQUOTA);
 
 		/* warn if we try to combine flags that we don't know to be
 		 * safe to combine */
-- 
1.9.1


