X-GM-THRID: 6035575144448
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,44622202b52d33bf
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.6.232 with SMTP id e8mr4010184laa.2.1425321212925;
        Mon, 02 Mar 2015 10:33:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.205.99 with SMTP id lf3ls487943lac.4.gmail; Mon, 02 Mar
 2015 10:33:32 -0800 (PST)
X-Received: by 10.152.88.40 with SMTP id bd8mr4020689lab.0.1425321212380;
        Mon, 02 Mar 2015 10:33:32 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id el6si720961wib.2.2015.03.02.10.33.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 10:33:32 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id bs8so17158065wib.0
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 10:33:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=TPwt2DFFih5o2KryJXQBtqoQYieAX0AzD2JCot4UZoU=;
        b=IPDd0DyHSrRpMROiQ/8B8Xb4x4DmqTcV+BnxlP7QfTGaLrkqg6aQfmSnrjC5+KMU1S
         Z7217osz3dM0SbtFTqYVystewr6yW4YJz3dnPOnERjHSS9DhmT13DLajxNcMiX2Wg5At
         BRjgpSnBbi4+zQKU7Ck+EUA/WN8D00spxo2NSpy4HvfJY7b62rwn7egh/xaFJwgcMovh
         fLTGnm6tZHZwFu/OBdMFJo/v9LwIds813W9/lgUjrWr/+V45W0YWZCDPGSWiZjGjyMKp
         AsU9Rc1HF4YLnylmCp4uoLqykZSvVemSZPjpaZ5mN+yzqLWBeRyMXLk3q7Zub210UPlc
         LIfw==
X-Received: by 10.194.120.230 with SMTP id lf6mr5973417wjb.78.1425321212179;
        Mon, 02 Mar 2015 10:33:32 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id u16sm20384620wjr.5.2015.03.02.10.33.28
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 10:33:31 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 21FCF621FB; Mon,  2 Mar 2015 21:33:19 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v10 1/4] Staging: emxx_udc: Remove argument test from function
Date: Mon,  2 Mar 2015 21:33:18 +0300
Message-Id: <1425321198-29313-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425320718-28979-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425320718-28979-1-git-send-email-hamohammed.sa@gmail.com>

This patch removes the test statement for an argument to  _nbu2ss_pullup
function, for it can't be null due to previous derefrences.


Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
v9: integrate this patch with emxx_udc patchset

 drivers/staging/emxx_udc/emxx_udc.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index a9bbf8e..4cc6296 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -2257,11 +2257,6 @@ static int _nbu2ss_pullup(struct nbu2ss_udc *udc, int is_on)
 {
 	u32	reg_dt;
 
-	if (!udc) {
-		ERR("%s, bad param\n", __func__);
-		return -EINVAL;
-	}
-
 	if (udc->vbus_active == 0)
 		return -ESHUTDOWN;
 
-- 
1.9.1


