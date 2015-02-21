X-GM-THRID: 1888775831552
X-Received: by 10.152.45.7 with SMTP id i7mr325198lam.9.1424531163547;
        Sat, 21 Feb 2015 07:06:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.104.5 with SMTP id ga5ls271534wib.10.gmail; Sat, 21 Feb
 2015 07:06:03 -0800 (PST)
X-Received: by 10.180.89.194 with SMTP id bq2mr293236wib.4.1424531163268;
        Sat, 21 Feb 2015 07:06:03 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wg0-x233.google.com (mail-wg0-x233.google.com. [2a00:1450:400c:c00::233])
        by gmr-mx.google.com with ESMTPS id i7si324162wif.0.2015.02.21.07.06.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 07:06:03 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) client-ip=2a00:1450:400c:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x233.google.com with SMTP id y19so18031775wgg.10
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 07:06:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=jKsN6wjI6KBg0n9T884ljO2+9GvXM0HDBcJxGKSijUQ=;
        b=a2emgLD131fTPAbA7Xax0iq4GbzITQhPhMpBfTeUilPZFUG0suMxhb2n5tERV/qZTx
         vKCCj5u5F2iEdQ7+Nz3QKhJlExiMOytZkmPY4MBFo2RGmvtr1qhYXUMi/XFATJnZ+K94
         RHSvwS+KzMvtwirpbz0lcItkTBXqNSyFX7Q5TAfGRuiR7XaU5c026tlQjvWy6zdDr9C+
         zT5N1PTuxhlxgr5rGiclRnRrKd/uJM4hTrA0HqlP0avkpcl+LJWkEjmJRHDWMpBFV5zT
         K1S5IcbEyLi0cxtIHnHGjADzC3JtSDJeEcYXRhHAqwaNCLuX3FNhSL7GreJYI28iv+pm
         4idg==
X-Received: by 10.195.13.168 with SMTP id ez8mr5437035wjd.30.1424531163186;
        Sat, 21 Feb 2015 07:06:03 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([78.190.92.185])
        by mx.google.com with ESMTPSA id jg3sm7319141wid.0.2015.02.21.07.06.01
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 07:06:02 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH 1/4] Staging: lustre: used complete
Date: Sat, 21 Feb 2015 17:05:11 +0200
Message-Id: <1424531114-12823-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

WARNING:consider using a completion
completion for the static was added.That was found by running checkpatch

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/lustre/lnet/lnet/router.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lnet/lnet/router.c b/drivers/staging/lustre/lnet/lnet/router.c
index 52ec0ab..e6907b7 100644
--- a/drivers/staging/lustre/lnet/lnet/router.c
+++ b/drivers/staging/lustre/lnet/lnet/router.c
@@ -1032,7 +1032,7 @@ lnet_router_checker_start(void)
 	    dead_router_check_interval <= 0)
 		return 0;
 
-	sema_init(&the_lnet.ln_rc_signal, 0);
+	static sema_init(&the_lnet.ln_rc_signal, 0);
 	/* EQ size doesn't matter; the callback is guaranteed to get every
 	 * event */
 	eqsz = 0;
-- 
1.8.3.2


