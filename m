X-GM-THRID: 4349090594816
X-Received: by 10.112.214.234 with SMTP id od10mr3272821lbc.3.1425243802364;
        Sun, 01 Mar 2015 13:03:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.207.101 with SMTP id lv5ls367945lac.22.gmail; Sun, 01 Mar
 2015 13:03:20 -0800 (PST)
X-Received: by 10.112.167.98 with SMTP id zn2mr3246821lbb.6.1425243800624;
        Sun, 01 Mar 2015 13:03:20 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x22e.google.com (mail-wg0-x22e.google.com. [2a00:1450:400c:c00::22e])
        by gmr-mx.google.com with ESMTPS id v5si50575wif.3.2015.03.01.13.03.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 13:03:20 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) client-ip=2a00:1450:400c:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22e.google.com with SMTP id x12so29852783wgg.6
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 13:03:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=njriAksDJpx7WiYuZ70+1JqQGf03tR+9J3feRkxRkYw=;
        b=JByT8sy2Pqf/N6lGv6jwXwuGxuIkS35khgzwReAZjf36u7qMqLppwsk47XWW7HMjzu
         VHQ/V8u2IEHA0bTB9h2lexlTj9S+MTeLlcU+87YMseuWQU/TbDaWEqi66U/rdfuHL1lB
         8tr6cuWb7C4KfM/Cmj4is5xTF9y3ht7kbpN4zlEpLD7aabBjWM2OA/uHUgGSWjOlxBUB
         c3E9h7c6ypZjq+4XXQEupZvkgb8EpyOC80hRSc0KTxrhjYqQgIMWDQXDX8ZaE9TI5pH1
         3ScNptf68Da3dEfX1rCUUfTbEbnJyw7aTFJkEp+UnG6hDp3wmM7auItiDGvtpvxmgEly
         z8Xw==
X-Received: by 10.180.211.172 with SMTP id nd12mr29163518wic.88.1425243800533;
        Sun, 01 Mar 2015 13:03:20 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id vv9sm10179536wjc.35.2015.03.01.13.03.19
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 13:03:19 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 9AE676339E; Mon,  2 Mar 2015 00:03:18 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v9 3/4] Staging: emxx_udc: Remove custom printk macro ERR
Date: Mon,  2 Mar 2015 00:03:17 +0300
Message-Id: <1425243797-8482-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425030509-19676-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425030509-19676-1-git-send-email-hamohammed.sa@gmail.com>

This patch removes custom printk macro ERR.
All the calls to this macro were replaced by de_err and pr_err.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
v9: nothing

 drivers/staging/emxx_udc/emxx_udc.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
index c21f211..f4a94c3 100644
--- a/drivers/staging/emxx_udc/emxx_udc.h
+++ b/drivers/staging/emxx_udc/emxx_udc.h
@@ -643,6 +643,5 @@ union usb_reg_access {
 };
 
 /*-------------------------------------------------------------------------*/
-#define ERR(stuff...)		printk(KERN_ERR "udc: " stuff)
 
 #endif  /* _LINUX_EMXX_H */
-- 
1.9.1


